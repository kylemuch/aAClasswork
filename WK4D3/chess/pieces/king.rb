require_relative "stepable.rb"

class King < Piece
  include Stepable

  attr_reader :symbol
  MOVES = [ [1,0], [-1,0], [0,1], [0,-1], [1,1], [-1,-1], [1,-1], [-1,1] ]
  
  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
    symbol = (color == :black ? "\u2654" : "\u265A")
  end
  
  
  def move_diffs
    MOVES
  end
end