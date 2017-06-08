module Dices
	module Auth
		
		def login! player
			@current_player = find_player(player) || add_player!(player)
			log "Player #{@current_player.name} logged in"
			@current_player
		end

		def logout! player
			destroy_player! player
			log "Player #{player.name} logged out"
		end


	end
end
