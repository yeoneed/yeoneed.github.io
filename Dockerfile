FROM jekyll/jekyll

COPY --chown=jekyll:jekyll Gemfile .
COPY --chown=jekyll:jekyll Gemfile.lock .

RUN gem install bundler:1.17.1

RUN bundle install

CMD ["jekyll", "serve"]
