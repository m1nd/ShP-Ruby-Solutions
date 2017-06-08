require 'workflow'

class Player

	include Workflow

	def initialize name
		@name = name
	end

	workflow do 
		state :alive do
			event :ban, transitions_to: :banned
			event :retire, transitions_to: :inactive
		end	

		state :banned do
			event :revive, transitions_to: :alive
		end

		state :inactive do
			event :revive, transitions_to: :alive
		end
	end

end	

player = Player.new("john")
puts player.current_state.name
player.ban!
p player.banned?
p player.current_state.name
player.revive!
p player.banned?
p player.current_state.name