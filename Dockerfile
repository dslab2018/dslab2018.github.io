FROM jekyll/jekyll

ADD Gemfile /srv/jekyll/Gemfile
ADD Gemfile.lock /srv/jekyll/Gemfile.lock

RUN jekyll build
