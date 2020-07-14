FROM fedora:32

RUN dnf -y install busybox


FROM scratch

COPY --from=0 /usr/sbin/busybox /bin/busybox

COPY bin/ /bin/
