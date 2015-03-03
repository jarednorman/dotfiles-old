#!/bin/bash

# Automatically run Ruby scripts with "bundle exec" (but only when appropriate).
# http://effectif.com/ruby/automating-bundle-exec
# Github: https://github.com/gma/bundler-exec

## Functions

within-bundled-project()
{
  local dir="$(pwd)"
  while [ "$(dirname $dir)" != "/" ]; do
    [ -f "$dir/Gemfile" ] && return
    dir="$(dirname $dir)"
  done
  false
}

run-with-bundler()
{
  if within-bundled-project; then
    bundle exec "$@"
  else
    "$@"
  fi
}

## Main program

BUNDLED_COMMANDS=(
berks
cap
capify
chefspec
chef-apply
chef-client
chef-shell
chef-solo
cucumber
foodcritic
foreman
guard
haml
html2haml
jasmine
kitchen
knife
middleman
pry
rails
rackup
rake
rake2thor
rspec
ruby
rails
sass
sass-convert
serve
shotgun
spec
spork
strainer
thin
thor
tilt
tt
turn
unicorn
unicorn_rails
)

for CMD in $BUNDLED_COMMANDS; do
  alias $CMD="run-with-bundler $CMD"
done
