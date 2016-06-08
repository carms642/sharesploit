#!/usr/bin/env ruby

class MetasploitDB
	def self.server(db_request)
		system("service postgresql #{db_request}")
	end
end
