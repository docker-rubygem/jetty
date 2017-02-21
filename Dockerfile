FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=6.2-java

RUN gem install jetty --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["jetty-service"]
CMD ["--help"]
