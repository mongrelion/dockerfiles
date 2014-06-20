# Elasticsearch v1.2.1

# Version 0.1

FROM mongrelion/debian

MAINTAINER Carlos León, mongrelion@dev-co.org

RUN apt-get -y install openjdk-7-jre

RUN cd /tmp && \
    curl https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.2.1.tar.gz > elasticsearch-1.2.1.tar.gz && \
    tar xf ./elasticsearch-1.2.1.tar.gz && \
    mv ./elasticsearch-1.2.1 /opt/elasticsearch

EXPOSE 9200 9300

ENTRYPOINT ["/opt/elasticsearch/bin/elasticsearch"]
