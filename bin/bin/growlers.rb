#!/usr/bin/env ruby
require 'mechanize'
Mechanize.
  new.
  get('https://phillipsbeer.com/home/growlers').
  search('.beerthumb').
  map(&:text).
  map(&:strip).
  reject(&:empty?).
  sample.
  tap { |beer_list| puts beer_list }
