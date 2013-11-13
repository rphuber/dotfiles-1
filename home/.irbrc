#!/usr/bin/env ruby

require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"

if defined? Rails
  begin
    require 'hirb'
    Hirb.enable
  rescue LoadError
  end
end

begin
  require "pry"
  Pry.start
  exit
rescue LoadError
  warn "=> Unable to load pry"
end
