Gem::Specification.new do |s|
	s.name			= 'samer'
	s.version		= '1.0.0'
	s.date			= '2016-04-23'
	s.summary		= "Find someone like you!"
	s.description	= "A simple gem that finds similar person to you by comparing music ratings"
	s.authors		= ["Nazar Valeev"] 
	s.email			= 'm1nd@mail.ru'

	s.files			= %w{
		lib/samer.rb
		lib/samer/data_provider.rb
		lib/samer/engine.rb
		lib/samer/user.rb
		lib/samer/similar_user.rb
	}
	s.files += Dir['lib/data/*']

	# s.executables.push 'samer'

	s.homepage		= 'http://rubygems.org/gems/samer'
	s.license		= 'MIT'
end