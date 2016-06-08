#!/usr/bin/env ruby

class SharesploitMenu
	def self.help
		puts ""
		puts "All Commands"
		puts "============"
		puts ""
		puts ""
		puts "Global Command              Descrption"
		puts "--------------              ----------"
		puts "help                        This message"
		puts "show modules                Show all module"
		puts "show banner                 Show awesome banner"
		puts "use                         Select module for use"
		puts ""
		puts "Module Command              Description"
		puts "--------------              -----------"
		puts "back                        Back to the previous module"
		puts "run                         Run module"
		puts "set                         Set options value for module"
		puts "show options                Show modules option"
		puts "info                        Show modules information"
		puts ""
	end

	def self.modules
		puts ""
		puts "All Modules"
		puts "==========="
		puts ""
		puts ""
		puts "Database Assessment         Description"
		puts "-------------------         -----------"
		puts "mysql_brute                 MySQL database login brute forcing"
		puts ""
		puts "Web Analisys                Description"
		puts "------------                -----------"
		puts "admin_finder                Scanning the admin login of a website"
		puts ""
	end

	def self.banner 
		load('core/reload_core.rb')
	end
end
