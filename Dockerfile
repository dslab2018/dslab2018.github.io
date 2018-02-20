FROM jekyll/jekyll

ADD docs/Gemfile /srv/jekyll/Gemfile
ADD docs/Gemfile.lock /srv/jekyll/Gemfile.lock

RUN jekyll build
