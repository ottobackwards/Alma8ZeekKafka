FROM almalinux:8.9

RUN dnf clean all
RUN dnf install -y 'dnf-command(config-manager)'
RUN dnf config-manager --set-enabled powertools
RUN dnf install -y epel-release
RUN dnf config-manager --set-enabled epel
RUN dnf update -y 
RUN dnf install -y gcc-toolset-13 vim curl cmake
RUN dnf install -y https://forensics.cert.org/centos/cert/8/x86_64/zeek-6.0.2-1.el8.x86_64.rpm \
	https://forensics.cert.org/centos/cert/8/x86_64/zeek-client-6.0.2-1.el8.x86_64.rpm  \
	https://forensics.cert.org/centos/cert/8/x86_64/zeek-core-6.0.2-1.el8.x86_64.rpm \
	https://forensics.cert.org/centos/cert/8/x86_64/zeek-devel-6.0.2-1.el8.x86_64.rpm \
	https://forensics.cert.org/centos/cert/8/x86_64/zeek-spicy-devel-6.0.2-1.el8.x86_64.rpm \
	https://forensics.cert.org/centos/cert/8/x86_64/zeek-zkg-6.0.2-1.el8.x86_64.rpm \
	https://forensics.cert.org/centos/cert/8/x86_64/zeek-btest-6.0.2-1.el8.x86_64.rpm \
	https://forensics.cert.org/centos/cert/8/x86_64/zeek-btest-data-6.0.2-1.el8.x86_64.rpm \
  https://forensics.cert.org/centos/cert/8/x86_64/libbroker-devel-6.0.2-1.el8.x86_64.rpm \
  https://forensics.cert.org/centos/cert/8/x86_64/zeekctl-6.0.2-1.el8.x86_64.rpm
WORKDIR /root
RUN curl -L https://github.com/edenhill/librdkafka/archive/v1.4.4.tar.gz | tar xvz
RUN source /opt/rh/gcc-toolset-13/enable && cd librdkafka-1.4.4/ && \
  ./configure && \
  make && \
  make install

