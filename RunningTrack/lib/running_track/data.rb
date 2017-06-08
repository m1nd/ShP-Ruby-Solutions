require	'open-uri'

module RunningTrack
	module Data

	# DATA_URL = "http://data.mos.ru/opendata/export/2269/json"
	DATA_PATH = File.expand_path '../../data/Беговые дорожки.csv', __FILE__
	DATA_URL = "http://api.data.mos.ru/v1/datasets/899/rows?$top=1"
	

	def self.import source
		# uri = URI(DATA_URL)
		# Net::HTTP.get uri
		path = source == :web ? DATA_URL : DATA_PATH
		open path
	end



	end
end