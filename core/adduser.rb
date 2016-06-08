#!/usr/bin/env ruby

require './core/notif'

class SharesploitAdd
	def self.user
		adduser, accept = Process.uid, 0
		if adduser != accept
			puts Notif.warning+" You must run as root or sudo"
			exit 1
		end
	end
end
