#!/usr/bin/env ruby

class ModulesInfo
	def self.name(modname)
		if modname == "mysql_brute"
			puts ""
			puts "Module Name: mysql_brute (MySQL database bruteforcer)"
			puts ""
			puts "Author     : Aris Kurniawan"
			puts "CVE Date   : -"
			puts "Require    : linux, ruby, mysql gem, and libmysqlclient-dev"
			puts "Description: This module for bruteforce the MySQL databases login session and get the version of database if login successful."
			puts ""

		elsif modname == "admin_finder"
			puts ""
			puts "Module Name: admin_finder (Admin Login Page Finder)"
			puts ""
			puts "Author     : Aris Kurniawan"
			puts "CVE Date   : -"
			puts "Require    : linux, ruby"
			puts "Description: This module for find the Admin Login from site using admin.txt dictionary."
			puts ""

		else
			# ignore
		end
	end
end
