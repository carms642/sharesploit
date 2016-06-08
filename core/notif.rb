#!/usr/bin/env ruby

class Notif
	def self.fail
		"\e[1;31m"+"[-]"+"\e[0m"
	end

	def self.warning
		"\e[1;31m"+"[!]"+"\e[0m"
	end

	def self.ok
		"\e[1;32m"+"[+]"+"\e[0m"
	end

  def self.proc
		"\e[1;34m"+"[*]"+"\e[0m"
	end
end
