#!/usr/bin/env ruby

require './core/reload_frame'
require './core/notif'

class SharesploitBanner
	def self.show(code_name)
		if code_name == "binary"
			SharesploitFrame.binary
		elsif code_name == "blankscreen"
			SharesploitFrame.blankscreen
		elsif code_name == "chemical"
			SharesploitFrame.chemical
		elsif code_name == "hackalien"
			SharesploitFrame.hackalien
		elsif code_name == "superhacker"
			SharesploitFrame.superhacker
		elsif code_name == "cowsay2"
			SharesploitFrame.cowsay2
		elsif code_name == "box"
			SharesploitFrame.box
		elsif code_name == "hackernews"
			SharesploitFrame.hackernews
		elsif code_name == "comicsans"
			SharesploitFrame.comicsans
		elsif code_name == "clivsgui"
			SharesploitFrame.clivsgui
		elsif code_name == "grafiti"
			SharesploitFrame.grafiti
		elsif code_name == "hashtag"
			SharesploitFrame.hashtag
		else
			puts Notif.fail+" Load banner error"
		end
	end
end
