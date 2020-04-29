FROM ubuntu

RUN apt-get update
RUN apt-get -y install ruby-full build-essential zlib1g-dev git

RUN gem install jekyll bundler

RUN mkdir /srv/jekyll
WORKDIR /srv/jekyll

CMD bundle install && bundle exec jekyll serve --host 0.0.0.0
