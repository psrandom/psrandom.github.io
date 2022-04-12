ARG NODE_VERSION=12

#gulp-responsive only workis with node 12
#gulp-imagemin version must be 7.1.0 because it's the last one that works with require()
FROM node:${NODE_VERSION}-alpine AS node

FROM jekyll/jekyll:3.8
LABEL maintainer="Pedro Rodrigues <pir.pedro@gmail.com"

COPY --from=node /usr/lib /usr/lib
COPY --from=node /usr/local/share /usr/local/share
COPY --from=node /usr/local/lib /usr/local/lib
COPY --from=node /usr/local/include /usr/local/include
COPY --from=node /usr/local/bin /usr/local/bin

RUN npm install -g npm@latest

RUN apk add --no-cache --virtual .build-deps \
  sudo \
  autoconf \
  libtool \
  nasm \
  automake \
  make \
  g++ \
  graphicsmagick \
  py3-pip

RUN gem install bundler
RUN python3 -m pip install --upgrade pip

RUN adduser jekyll wheel \
  && sed -e 's;^# \(%wheel.*NOPASSWD.*\);\1;g' -i /etc/sudoers

ARG ALGOLIA_API_KEY
WORKDIR /srv/jekyll
RUN pip3 install awscli \
  awscli-plugin-endpoint

CMD bundle exec jekyll build && bundle exec jekyll algolia
