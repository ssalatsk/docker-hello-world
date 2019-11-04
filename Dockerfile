FROM golang:buster AS build

RUN go get -v "github.com/svent/sift"


FROM fedora:30

LABEL com.redhat.component="docker-hello-world" \
      name="acmiel/docker-hello-world" \
      version="2.0"

COPY --from=build "/go/bin/sift" "/usr/local/bin/sift"

CMD ["sift", "^PRETTY_NAME", "/etc/os-release"]
