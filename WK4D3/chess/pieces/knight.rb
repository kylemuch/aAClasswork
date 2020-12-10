require_relative "stepable.rb"

class Knight < Piece
  include Stepable

  attr_reader :symbol
  MOVES = [[-2,-1], [-2,1], [-1, -2], [-1, 2], [1,-2], [1,2], [2,-1], [2,1]]


  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
    symbol = (color == :black ? "\u2658" : "\u265E")
  end
  
  
  def move_diffs
    MOVES
  end
end