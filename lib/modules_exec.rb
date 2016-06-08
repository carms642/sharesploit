#!/usr/bin/env ruby

require './core/notif'

class SharesploitExec
	def self.name(modname)
		if modname == "mysql_brute"
			$basepath = Dir.pwd
			modules = "#{$basepath}/modules"
			$user = File.read($basepath+'/lib/.set/.user.set').chomp!
			$host = File.read($basepath+'/lib/.set/.host.set').chomp!
			$pass = "#{modules}/database-assessment/wordlist.txt"
			system("ruby #{modules}/database-assessment/mysql_brute.rb #{$user} #{$host} #{$pass}")

		elsif modname == "admin_finder"
			$basepath = Dir.pwd
			modules = "#{$basepath}/modules"
			$url = File.read($basepath+'/lib/.set/.url.set').chomp!
			$dic = "#{modules}/web-analysis/admin.txt"
			system("ruby #{modules}/web-analysis/admin_finder.rb #{$url} #{$dic}")

		else
			puts Notif.fail+" Module not available"
		end
	end
end
