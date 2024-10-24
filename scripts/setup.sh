#!/bin/sh

# Install homebrew
which brew || curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash

# Install rbenv
which rbenv || curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash

# Install ruby using rbenv
latest_stable_ruby_version=$(rbenv install -l | grep -v - | tail -1)
echo $latest_stable_ruby_version > .ruby-version
if [[ ! -d "$HOME/.rbenv/versions/$ruby_version" ]]; then
  rbenv install $ruby_version;
  rbenv init
fi

# Install bunlder with specical version
gem install bundler

# Install all gems
bundle install

## Install all pods
#bundle exec pod install

## Create alias
#. ~/.zshrc && [ `alias | grep "pod" | wc -l` = 0 ] && echo 'alias pod="bundle exec pod"' >> $HOME/.zshrc && . ~/.zshrc
