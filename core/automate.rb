#!/usr/bin/env ruby

require './core/adduser'
require './core/notif'

class SharesploitAutomate
	def self.check
		SharesploitAdd.user

		$isdir = Dir.pwd
		$basepath = "#{$isdir}/lib/.set/.lhost.set"
		system("hostname -I > #{$basepath}")

		ip = File.read($basepath)
		if ip == "\x0a"
		#
		#elsif bypass == true
		# syntax = "!="
		#
			puts Notif.warning+" Please connect to internet"
		else
			load('core/routine.rb')
		end
	end
end
