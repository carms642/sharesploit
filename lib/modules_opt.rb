#!/usr/bin/env ruby

class SharesploitOpt
	def self.name(modname)
		if modname == "mysql_brute"
			$basepath = Dir.pwd
			user = File.read($basepath+'/lib/.set/.user.set')
			host = File.read($basepath+'/lib/.set/.host.set')
			if user == "\n" && host == "\n"
				puts ""
				puts "Module: mysql_brute"
				puts ""
				puts "Option    Description                             Value"
				puts "------    -----------                             -----"
				puts "user      Mysql user for login                         "
				puts "host      Mysql server IP for bruteforcing             "
				puts ""
			else
				puts ""
				puts "Module: mysql_brute"
				puts ""
				puts "Option    Description                             Value"
				puts "------    -----------                             -----"
				puts "user      Mysql user for login                    #{user}"
				puts "host      Mysql server IP for bruteforcing        #{host}"
				puts ""
			end

		elsif modname == "admin_finder"
			$basepath = Dir.pwd
			url = File.read($basepath+'/lib/.set/.url.set')
			if user == "\n" && host == "\n"
				puts ""
				puts "Module: admin_finder"
				puts ""
				puts "Option    Description                             Value"
				puts "------    -----------                             -----"
				puts "url       URL address for scanning                     "
				puts ""
			else
				puts ""
				puts "Module: admin_finder"
				puts ""
				puts "Option    Description                             Value"
				puts "------    -----------                             -----"
				puts "url       URL address for scanning                #{url}"
				puts ""
			end

		else
			# ignore
		end
	end
end
