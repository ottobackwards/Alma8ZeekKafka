# installing zeek kafak plugin 

> This is an Alma 8.9 docker image setup to build and install ZeekKafka plugin.
> It uses the cert zeek 6.0.2 rpms ( currrently the Centos Stream official builds are broken )

- build this image: `docker build -t NAME .`
- run this image : `docker run -it NAME bash`
- run `source /opt/rh/gcc-toolset-13/enable && /opt/zeek/bin/zkg install seisollc/zeek-kafka --version v1.2.0`
- run `/opt/zeek/bin/zeek -N`

