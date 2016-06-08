#!/usr/bin/env ruby

require './core/notif'

param, val, pwd = ARGV[1], ARGV[2], Dir.pwd

if ARGV.length > 3
	puts Notif.fail+" Wrong, set #{param} #{val} ..."
elsif param == "lhost"
	system("echo #{val} > #{pwd}/lib/.set/.lhost.set")
	puts Notif.ok+" Set lhost { #{val} }"
elsif param == "name"
	system("echo #{val} > #{pwd}/lib/.set/.name.set")
	puts Notif.ok+" Set name { #{val} }"
elsif param == "lport"
	system("echo #{val} > #{pwd}/lib/.set/.lport.set")
	puts Notif.ok+" Set lport { #{val} }"
elsif param == "user"
	system("echo #{val} > #{pwd}/lib/.set/.user.set")
	puts Notif.ok+" Set user { #{val} }"
elsif param == "host"
	system("echo #{val} > #{pwd}/lib/.set/.host.set")
	puts Notif.ok+" Set host { #{val} }"
elsif param == "url"
	system("echo #{val} > #{pwd}/lib/.set/.url.set")
	puts Notif.ok+" Set url { #{val} }"
else
	puts Notif.fail+" Parameter #{param} not valid"
end
