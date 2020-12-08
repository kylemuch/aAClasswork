require_relative "../poly_tree_node_final/lib/00_tree_node.rb"

class KnightPathFinder
  attr_reader :starting_pos, :root_node, :considered_positions

  def self.valid_moves(pos)
    x,y = pos
    valid_moves = [
      [x + 1, y + 2], 
      [x + 2, y + 1],
      [x + 1, y - 2],
      [x + 2, y - 1],
      [x - 1, y - 2],
      [x - 2, y - 1],
      [x - 2, y + 1],
      [x - 1, y + 2],
    ]

    valid_moves = valid_moves.select do |move| 
      x, y = move[0], move[1]
      (x >= 0 && x <= 7) && (y >= 0 && y <= 7)
    end


    end
  
  def initialize(starting_pos)
    @starting_pos = starting_pos
    @root_node = PolyTreeNode.new(@starting_pos)
    @considered_positions = [@starting_pos]
  end

  def new_move_positions(pos)
    valid_moves = KnightPathFinder.valid_moves(pos)
    valid_moves = valid_moves.select{|pos| !(@considered_positions.include?(pos))}
    @considered_positions = @considered_positions + valid_moves
    valid_moves
  end

  def build_move_tree
    
  end
end



kpf = KnightPathFinder.new([0,0])
# kpf.starting_pos
# p kpf.root_node.value
# KnightPathFinder.valid_moves([7,7])
kpf.new_move_positions([7,7])
p kpf.considered_positions
# to help us find paths to the specified endpoint, we will build a move tree.
# each value in the tree is a position on the 8X8 chess board
# a node is a child of another node if you can move from the parent position directly to the child position. 
# root node of the tree is the knight's starting positin. 
# each position on the board will be represented by a PolyTreeNode instance

