Gem::Specification.new do |s|
	s.name			= 'running_track'
	s.version		= '1.0.0'
	s.date			= '2016-04-23'
	s.summary		= "Find your running track"
	s.description	= "A simple gem that prints running tracks information from data.mos.ru site"
	s.authors		= ["Nazar Valeev"] 
	s.email			= 'm1nd@mail.ru'

	s.files			= [
		"lib/running_track.rb",
		"lib/running_track/data.rb",
		"lib/running_track/table.rb"
	]
	s.files += Dir['lib/data/*']

	s.requirements = %w{
		terminal-table, '~> 1.4'
	}
	s.add_runtime_dependency 'terminal-table', '~> 1.4'

	s.homepage		= 'http://rubygems.org/gems/running_track'
	s.license		= 'MIT'
end