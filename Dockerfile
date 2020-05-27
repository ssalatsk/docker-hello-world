FROM fedora:30

LABEL com.redhat.component="docker-hello-world" \
      name="acmiel/docker-hello-world" \
      version="1.0"

ENV GREETING="Hello there."

ENV COOL_VAR_A="$COOL_VAR_A" \
    COOL_VAR_B="$COOL_VAR_B" \
    COOL_VAR_C="$COOL_VAR_C"

CMD echo "COOL_VAR_A: $COOL_VAR_A"; \
    echo "COOL_VAR_B: $COOL_VAR_B"; \
    echo "COOL_VAR_C: $COOL_VAR_C"
