require_relative 'Dices/game'
require_relative 'player'
require_relative 'core_ext/object'

module Dices

  RELEASE = "1"	
  MIDDLE = "0"
  MINOR = "0"

  def self.version
  	[RELEASE, MIDDLE, MINOR].join(".")
  end

end

# puts Dices.version 
game = Dices::Game.new
player = Player.new 'Fedor'
game.login! player
player.show_credit
game.run 10
player.show_credit
game.logout! player
