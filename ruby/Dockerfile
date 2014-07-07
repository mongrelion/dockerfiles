FROM mongrelion/debian

MAINTAINER Carlos León, mongrelion@dev-co.org

RUN apt-get -y install ruby1.9.1 ruby1.9.1-dev

RUN echo "gem: --no-ri --no-rdoc" > ~/.gemrc && \
    gem install bundler
