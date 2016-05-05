#!/usr/bin/env ruby

require 'hcl'

hcl = HCl::App.new
entry = HCl::DayEntry.with_timer(hcl.http)

if entry
  puts " #{entry.project} (#{entry.task}) #{entry.formatted_hours}"
else
  puts " No timer running. "
end
