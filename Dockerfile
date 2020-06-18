FROM fedora:30

LABEL com.redhat.component="docker-hello-world" \
      name="acmiel/docker-hello-world" \
      version="1.0"

# Copy the upstream sources from cachito integration
COPY $REMOTE_SOURCE $REMOTE_SOURCE_DIR

CMD ["ls", "-la", "/remote-source"]
