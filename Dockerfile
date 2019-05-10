FROM jenkins/jnlp-slave:alpine

ENV VERSION 0.6.0

USER root

RUN apk --update add \
	bash \
	curl \
	git \
	g++ \
	make \
	openssh \
	openssl \
	openssl-dev \
	&& rm -rf /var/cache/apk/*

RUN curl -L https://github.com/AGWA/git-crypt/archive/$VERSION.tar.gz | tar zxv -C /var/tmp
RUN cd /var/tmp/git-crypt-$VERSION && make && make install PREFIX=/usr/local

USER jenkins
