require_relative "slideable.rb"

class Rook < Piece
  include Slideable
  attr_reader :symbol


  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
    @symbol = (color == :black ? "\u2656" : "\u265C")
  end

  def move_dirs
    HORIZONTAL_AND_VERICAL_DIRECTIONS
  end
  
end