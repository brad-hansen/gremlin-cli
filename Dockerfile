FROM tinkerpop/gremlin-console:latest
COPY ./remote-docker.yaml /opt/gremlin-console/conf/remote-docker.yaml
COPY ./init.groovy /opt/gremlin-console/init.groovy
ENTRYPOINT [ "bin/gremlin.sh", "-i", "init.groovy" ]