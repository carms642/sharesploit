#!/usr/bin/env ruby

require 'time'
require './core/reload_banner'

readtime = Time.new.sec
if readtime <= 5                      
	code_name = "binary"        
	SharesploitBanner.show(code_name)
elsif readtime > 5 && readtime <= 10 
	code_name = "blankscreen" 
	SharesploitBanner.show(code_name)
elsif readtime > 10 && readtime <= 15
	code_name = "chemical"
	SharesploitBanner.show(code_name)
elsif readtime > 15 && readtime <= 20 
	code_name = "hackalien"
	SharesploitBanner.show(code_name)
elsif readtime > 20 && readtime <= 25
	code_name = "superhacker" 
	SharesploitBanner.show(code_name)
elsif readtime > 25 && readtime <= 30 
	code_name = "cowsay2" 
	SharesploitBanner.show(code_name)
elsif readtime > 30 && readtime <= 35 
	code_name = "box"
	SharesploitBanner.show(code_name)
elsif readtime > 35 && readtime <= 40 
	code_name = "hackernews" 
	SharesploitBanner.show(code_name)
elsif readtime > 40 && readtime <= 45 
	code_name = "comicsans" 
	SharesploitBanner.show(code_name)
elsif readtime > 45 && readtime <= 50 
	code_name = "clivsgui" 
	SharesploitBanner.show(code_name)
elsif readtime > 50 && readtime <= 55 
	code_name = "grafiti" 
	SharesploitBanner.show(code_name)
elsif readtime > 55 && readtime <= 60 
	code_name = "hashtag" 
	SharesploitBanner.show(code_name)
else
	code_name = nil
end
