#!/usr/bin/env ruby

require './core/menu'
require './lib/modules_exec'
require './lib/modules_opt'
require './core/notif'
require './lib/modules_info'

module SharesploitModules
	def self.looping(modname)
		pwd = Dir.pwd
		begin
			loop do
        print "\e[4;31m"+"ssf"+"\e[0m"+":"+"#{modname}"+" > "
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
					puts Notif.warning+" Please close from this module first: type 'back'"
				elsif stdin == "back\n" 
					load('core/routine.rb')
				elsif stdin == "run\n" 
					SharesploitExec.name(modname)
				elsif stdin == "set\n"
					puts Notif.proc+" Usage: set <parameter>"
				elsif stdin[0] == "s" && stdin[1] == "e" && stdin[2] == "t" && +stdin[3] == " " 
					system("ruby #{pwd}/lib/modules_set.rb #{stdin}")
				elsif stdin == "show options\n" 
					SharesploitOpt.name(modname)
				elsif stdin == "info\n" 
					ModulesInfo.name(modname)
				else
					puts Notif.warning+" Unknown command: #{stdin}"
				end
			end
		rescue Interrupt
			puts ""
			puts Notif.proc+" Thankyou for using ShareSploit and keep hacking"
			exit 1
		end
	end
end
