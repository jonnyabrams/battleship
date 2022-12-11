require_relative 'player'

class Game
  attr_reader :player_1, :player_2

  def initialize(player_1 = Player.new, player_2 = Player.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  def place_ships
    puts "Place your 5 ship coordinates (separated by commas)"
    input = gets.chomp.split(",")
    input
  end

  # returns the number value from a ship placement eg. "1a" returns "1"
  def get_number_value(placement)
    placement[0]
  end

  # returns the letter value from a ship placement eg. "1a" returns "a"
  def get_letter_value(placement)
    placement[1]
  end

  def calculate_placement_horizontal(placement)
    if placement == 11
      "Jack"
    elsif card == 12
      "Queen"
    elsif card == 13
      "King"
    elsif card == 14
      "Joker"
    else
      card
    end
  end
end