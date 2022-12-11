require_relative 'player'

class Game
  attr_reader :player_1, :player_2

  def initialize(player_1 = Player.new, player_2 = Player.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  def place_ships
    puts "Place your 1st ship"
  end
end