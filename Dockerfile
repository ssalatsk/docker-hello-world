FROM fedora:30

LABEL com.redhat.component="docker-hello-world" \
      name="acmiel/operator-bundle" \
      version="1.0.operator.bundle" \
      com.redhat.delivery.operator.bundle=true

ADD manifests manifests/
