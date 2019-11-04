FROM fedora:30

ENV GREETING="Hello there."

CMD printf "%s\n" "$GREETING"
