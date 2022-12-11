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

  def mark_grid(input, player)
    input.each {|placement| player.grid[calculate_row_letter(placement)][get_number_value(placement)] = "O" }
    player.grid
  end

  # returns the number value from a ship placement eg. "1a" returns "1"
  def get_number_value(placement)
    placement[0].to_i
  end

  # returns the letter value from a ship placement eg. "1a" returns "a"
  def get_letter_value(placement)
    placement[1]
  end

  # don't need one for numbers as it's already not 0-indexed
  def calculate_row_letter(placement)
    case get_letter_value(placement)
      when "a"
        1
      when "b"
        2
      when "c" 
        3
      when "d" 
        4
      when "e" 
        5
      else 
        raise "Invalid input"
    end
  end
end