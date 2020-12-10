require_relative "slideable.rb"

class Bishop < Piece
  include Slideable
  attr_reader :symbol

  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
    @symbol = (color == :black ? "\u2657" : "\u265D")
  end

  def move_dirs
    DIAGONAL_DIRECTIONS
  end
  
end