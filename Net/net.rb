require 'net/http'

class RunningTrack
	# DATA_URL = "http://data.mos.ru/opendata/export/2269/json"
	DATA_URL = "http://api.data.mos.ru/v1/datasets/899/rows?$top=1"
	# DATA_URL = "http://api.data.mos.ru/version"

	def self.import
		uri = URI(DATA_URL)
		Net::HTTP.get uri
	end


end

puts RunningTrack.import