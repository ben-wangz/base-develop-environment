ARG SYSTEMD_VERSION=1.3.0-centos8.3.2011
FROM wangz2019/docker-systemd:${SYSTEMD_VERSION}
COPY docker-ce.repo /etc/yum.repos.d/docker-ce.repo
RUN $(if [ "8" == "$(rpm --eval '%{centos_ver}')" ]; then echo dnf; else echo yum; fi) install -y \
        java-1.8.0-openjdk \
        yum-utils \
        device-mapper-persistent-data \
        lvm2 \
        docker-ce \
    && systemctl enable docker
CMD ["/usr/sbin/init"]

HEALTHCHECK --interval=10s --timeout=3s CMD systemctl is-active sshd && systemctl is-active docker-ce || exit 1
