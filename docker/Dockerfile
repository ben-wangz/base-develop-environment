ARG SYSTEMD_VERSION=1.3.0-centos8.3.2011
FROM wangz2019/docker-systemd:${SYSTEMD_VERSION}
RUN rm -rf /etc/yum.repos.d/*
COPY centos.8.repo /etc/yum.repos.d/centos.8.repo
RUN $(if [ "8" == "$(rpm --eval '%{centos_ver}')" ]; then echo dnf; else echo yum; fi) install -y java-1.8.0-openjdk
CMD ["/usr/sbin/init"]

HEALTHCHECK --interval=10s --timeout=3s CMD systemctl is-active sshd || exit 1
