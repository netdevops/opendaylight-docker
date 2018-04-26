FROM debian:stretch

RUN apt-get update && \
    apt-get install -y wget openjdk-8-jdk-headless procps net-tools && \
    mkdir /opt/opendaylight && \
    wget https://nexus.opendaylight.org/content/repositories/public/org/opendaylight/integration/karaf/0.8.0/karaf-0.8.0.tar.gz && \
    tar -xvzf karaf-0.8.0.tar.gz -C /opt/opendaylight --strip-components 1

WORKDIR /opt/opendaylight

EXPOSE 8181 8101

CMD ./bin/karaf
