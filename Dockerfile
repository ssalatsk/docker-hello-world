FROM fedora:30

LABEL com.redhat.component="docker-hello-world" \
      name="acmiel/docker-hello-world" \
      version="1.0"

ENV GREETING="Hello there."

CMD printf "%s\n" "$GREETING"
