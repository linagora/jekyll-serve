FROM ruby:2.4-alpine

RUN apk add --no-cache build-base gcc bash

RUN gem install jekyll -v 3.7.0

EXPOSE 4000
EXPOSE 35729

WORKDIR /site

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT [ "docker-entrypoint.sh" ]

CMD [ "bundle", "exec", "jekyll", "serve", "--force_polling", "--livereload", "-H", "0.0.0.0", "-P", "4000" ]
