require_relative "slideable.rb"

class Queen < Piece
  include Slideable
  attr_reader :symbol


  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
    symbol = (color == :black ? "\u2655" : "\u265B")
  end

  def move_dirs
    HORIZONTAL_AND_VERICAL_DIRECTIONS + DIAGONAL_DIRECTIONS
  end
  
end