FROM fedora:32

RUN dnf -y install busybox


FROM scratch

COPY --from=0 /usr/sbin/busybox /bin/busybox

RUN ["busybox", "ln", "-s", "/bin/busybox", "/bin/test"]
RUN ["busybox", "ln", "-s", "/bin/busybox", "/bin/stat"]
RUN ["busybox", "ln", "-s", "/bin/busybox", "/bin/cat"]
