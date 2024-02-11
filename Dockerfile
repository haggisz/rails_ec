# image
FROM ruby:3.2.1

WORKDIR /home/jagaimo

RUN set -eux \
	&& apt-get update \
	&& apt-get install -y gosu \
	&& rm -rf /var/lib/apt/lists/* \
# verify that the binary works
	&& gosu nobody true

# create user and home directory
COPY createuser.sh /usr/bin/createuser.sh
RUN chmod +x /usr/bin/createuser.sh \
&& /usr/bin/createuser.sh

# ARG HOME_DIR='/home/jagaimo'
# RUN mkdir -p $HOME_DIR \
# && chown -R jagaimo:jagaimo $HOME_DIR \
# && chmod +x $HOME_DIR


RUN useradd -G sudo --user-group --create-home --shell /bin/false app \
  && echo 'app:apppass' | chpasswd \
  && curl https://cli-assets.heroku.com/install.sh | sh


RUN apt-get update -qq \
  && apt-get install -y gobject-introspection \
  libvips \
  ffmpeg \
  poppler-utils \
  build-essential \
  libpq-dev \
  libgirepository1.0-dev \
  libffi-dev \
  postgresql-client \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*


COPY Gemfile /home/jagaimo
COPY Gemfile.lock /home/jagaimo
RUN gem install bundler \
&& bundle install

COPY . /home/jagaimo


