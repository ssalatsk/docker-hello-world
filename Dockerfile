FROM fedora:30

RUN echo "Hello there."


FROM scratch

LABEL com.redhat.component="docker-hello-world" \
      name="acmiel/operator-bundle" \
      version="1.0.operator.bundle" \
      com.redhat.delivery.operator.bundle=true

ADD manifests manifests/
