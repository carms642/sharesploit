#!/usr/bin/env ruby

require 'time'
require './core/banner'
require './core/adduser'
require './core/msf_db'
require './core/base_load'
require './core/notif'

begin
	#######################################
	#                                     #
	#   The ShareSploit Framework (SSF)   #
	#                                     #
	#            Created by:              #
	#                                     #
	#      Aris Kurniawan (akaig)         #
	#                                     #
	#######################################
	SharesploitAdd.user
	$basepath = Dir.pwd

	if Dir.exist?("#{$basepath}/core")
		db_request = "start"
		MetasploitDB.server(db_request)
		SharesploitBase.loading

		# core content
		core = ['adduser.rb','automate.rb','banner.rb','base_load.rb','cert.rb','frame.rb','menu.rb','msf_db.rb','notif.rb','reload_banner.rb','reload_core.rb','reload_frame.rb','routine.rb']
		for permiss in core
			system("chmod 755 #{$basepath}/core/#{permiss}")
		end

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

	else
		puts Notif.fail+" Stop! can not load, /core directory is not exist."
	end

rescue Interrupt => e
	puts Notif.fail+" Error messages: #{e}"
end
