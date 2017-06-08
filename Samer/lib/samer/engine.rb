

module Samer

	class Engine

		attr_reader :users

		def initialize users
			@users = users			
		end
		

		def find_for name
			similar = {}
			current_user = @users.find{ |user| user.name == name }

			@users.each do |user|
				next if user.name == current_user.name
				similar[user.name] = distance(current_user, user)
			end
			similar.max_by{ |_, score| score }
		end

	private

		def distance current_user, user
			
			distances = []

			current_user.music.keys.each do |genre|
				next unless  user.music[genre]
				distances.push (current_user.music[genre] - user.music[genre]) ** 2
			end

			1.fdiv 1 + Math.sqrt(distances.inject(0){ |sum, score| sum + score })

		end
		
	end
end