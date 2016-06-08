#!/usr/bin/env ruby

require './core/menu'
require './lib/modules_loop'
require './core/notif'

begin
	loop do
		print "\e[4;31m"+"ssf"+"\e[0m"+" > "
		stdin = gets
		if stdin == "\n"
			# ignore
		elsif stdin == "help\n"
			SharesploitMenu.help
		elsif stdin == "exit\n"
			puts Notif.proc+" Keyboard press [Ctrl+C] to exit"
		elsif stdin == "show modules\n"
			SharesploitMenu.modules
		elsif stdin == "show banner\n"
			SharesploitMenu.banner
		elsif stdin == "use\n"
			puts Notif.proc+" Usage: use <module>"
		############## this is module choicer ############
		elsif stdin == "use mysql_brute\n"
			SharesploitModules.looping("mysql_brute")
		elsif stdin == "use admin_finder\n"
			SharesploitModules.looping("admin_finder")
		##################################################
		elsif stdin == "back\n" 
			puts Notif.warning+" Please select module first"
		elsif stdin == "run\n" 
			puts Notif.warning+" Please select module first"
		elsif stdin == "set\n"
			puts Notif.warning+" Please select module first"
		elsif stdin == "show options\n" 
			puts Notif.warning+" Please select module first"
		elsif stdin == "info\n" 
			puts Notif.warning+" Please select module first"
		else
			puts Notif.warning+" Unknown command: #{stdin}"
		end
	end
rescue Interrupt
	puts ""
	puts Notif.proc+" Thankyou for using ShareSploit and keep hacking"
	exit 1
end
