class Game
  def initialize
    @player_w = Player.new("Player 1", "W")
    @player_b = Player.new("Player 2", "B")
    @current_player = @player_w
    @board = Board.new(load_game?)
    play
  end

  def load_game?

  end

  def play
    @board.place_marker(@current_player)
    until game_over? do
      switch_players!
      @board.place_marker(@current_player)
    end
  end

  def game_over?

  end

  def switch_players!
    @current_player == @player_w ? @current_player = @player_b : @current_player = @player_a
    puts "#{@current_player} now playing:"
  end

end

class Board
  attr_reader :grid

  def initialize(game_load)
    # board = load(game_load)
    puts "this is the board wahoo"
    @grid = Array.new(8) { Array.new(8) }
  end

  def [](square)
    row, column = square
    matrix[row][column]
  end

  def []=(square, piece)
    row, column = square
    matrix[row][column] = piece
  end

  def load

  end

  def save
  end

  def place_marker(player)
  end

  def print_board
  end

  def check?
  end

  def mate?
  end


end

class Pieces
  include Moves


  # new piece stores current position (and past moves in linked list?)

  def initialize (color)
    color = color
    current_position

  end

  # create a hash of all players pieces, their color, their current coordinates, possible future moves

  def legal_move?
    # chosen space included in legal move array using moves module
  end


end

class Player
  def initialize(id, color)
    @id = id
    @color = color
    @pieces = Pieces.new(color)
  end

end

#module? doesn't care about state
module Display 

  #display board?

  # start up

  # commands?
end

#module or class?
module Moves

  def knight(current)

  end

  def king
  end

  def queen
  end

  def pawn
  end

  def bishop
  end

  def rook
  end

end