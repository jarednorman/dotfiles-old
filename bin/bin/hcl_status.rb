#!/usr/bin/env ruby
require 'hcl'
hcl = HCl::App.new
entry = HCl::DayEntry.with_timer(hcl.http)
puts "#{entry.formatted_hours} - #{entry.task} (#{entry.project})"
