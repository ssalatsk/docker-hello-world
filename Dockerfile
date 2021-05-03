FROM fedora:30

LABEL com.redhat.component="docker-hello-world" \
      name="osbs-test/user_warnings-in-build-logs" \
      version="1.0.user_warnings.in.build.logs"

CMD ["exit", "0"]
