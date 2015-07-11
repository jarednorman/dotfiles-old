#!/usr/bin/env ruby

require 'hcl'

hcl = HCl::App.new
entry = HCl::DayEntry.with_timer(hcl.http)

if entry
  puts "<fc=#fdf6e3,#268bd2> #{entry.project}: #{entry.task} (#{entry.formatted_hours}) </fc>"
else
  puts '<fc=#fdf6e3,#dc322f> NO TIMER RUNNING </fc>'
end
