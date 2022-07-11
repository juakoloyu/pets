FROM ruby:3.0.4-alpine 

RUN apk add --update --virtual \
    runtime-deps \
    postgresql-client \
    build-base \
    libxml2-dev \
    libxslt-dev \
    # mysql-client \
    # mariadb-dev \
    # sqlite-dev \
    nodejs \
    # yarn \
    # npm \
    libffi-dev \
    readline \
    build-base \
    postgresql-dev \
    libc-dev \
    linux-headers \
    readline-dev \
    file \
    git \
    tzdata \
    && rm -rf /var/cache/apk/*

WORKDIR /app
COPY Gemfile Gemfile.lock /app/

ENV BUNDLE_PATH /gems
# RUN yarn install

# RUN apk add vips-dev
# RUN apk add imagemagick
# RUN apk add ffmpeg
# RUN apk add poppler

#RUN gem install solargraph
RUN gem install bundler -v 2.3.4
# RUN gem install ruby-vips
RUN bundle install

COPY . /app/
#RUN npm rebuild node-sass

CMD ["sh","rails"]

EXPOSE 3001
