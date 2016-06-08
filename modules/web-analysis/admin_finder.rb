#!/usr/bin/env ruby
#
##
# Admin Login Page Finder
# Written by Aris Kurniawan (akaig) - @0xffHack
# Check on https://github.com/sharesec/sharesploit
# I found and used the wordlist on here: https://github.com/the-c0d3r/admin-finder/blob/master/wordlist.txt (*credit)
##

require 'net/http'
require 'time'
require './core/notif'

def banner
	puts "Admin login page finder v1 by Aris Kurniawan (akai9)"
	puts "         Follow me on twitter: @0xffHack"
	puts "Usage: admin_finder.rb <URL address> <path/to/dictionary/admin.txt>"
end

$time = Time.new
$url, $dic = ARGV[0], ARGV[1]

if ARGV.length == 2
	$wordlist = File.read($dic)
	page_req = []

	$wordlist.each_line do |address|
		page_req << address
	end
	
	if ($url[0] == "h" and $url[1] == "t" and $url[2] == "t" and $url[3] == "p" and $url[4] == ":") or ($url[0] == "h" and $url[1] == "t" and $url[2] == "t" and $url[3] == "p" and $url[4] == "s" and $url[5] == ":")
		puts Notif.proc+" Admin login page finder starting at #{$time}"
		puts Notif.proc+" Scanning #{$url} ...\n"
		puts Notif.warning+" Not support HTTP and HTTPS header."

	else 
		begin
			puts Notif.proc+" Admin login page finder starting at #{$time}"
			puts Notif.proc+" Scanning #{$url} ...\n"

			for scan in page_req
				attack = scan.chomp!
				headers = Net::HTTP.new($url).get('/'+attack)  
				if headers.code == '200'
					puts Notif.ok+" Found: #{$url}/#{attack}"
				elsif headers.code == '404'
					puts Notif.fail+" Not Found: #{$url}/#{attack}"
				elsif headers.code == '403'
					puts Notif.warning+" Permission deny: #{$url}/#{attack}"
				elsif headers.code == '301' || headers.code == '302'
					puts Notif.fail+" Redirected: #{$url}/#{attack}"
				elsif headers.code == '400'
					puts Notif.fail+" Move Permanent: #{$url}/#{attack}"
			 	else
					# other
				end
			end
			puts Notif.proc+" Admin login page finder finished at #{$time}"
		rescue SocketError
			puts Notif.fail+" Scan failed, please check your network connection or URL address."
		rescue Interrupt => handle
		end
	end

else
	banner
end
