module Dices
	module DataManager

		def find_player current_payer
			@players.find{ |player| player.name == current_payer.name }			
		end

		def add_player! player
			@players.push(player)
			log "Added player #{player.name}"	
			player		
		end

		def destroy_player! current_payer
			@players.delete_if{ |player| player.name == current_payer.name }			
		end


	end
end