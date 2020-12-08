require "byebug"
class PolyTreeNode
  # each instance of this class represents a node in a tree
  # it can have more than two children which makes it a poly tree, not a binary tree
  attr_reader :parent, :children, :value
  

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent=(parent_node)

    @parent.children.delete(self) unless @parent.nil?

    if parent_node == nil
      @parent = nil
    else
      @parent = parent_node
      @parent.children << self
    end
  end

  def add_child(child_node)
    child_node.parent = self
  end

  def remove_child(child_node)
    if child_node.parent.nil?
      raise "This is not a child node"
    end

    child_node.parent = nil
  end

  def dfs(target_value)
    return self if value == target_value

    children.each do |child|
      result = child.dfs(target_value)
      return result unless result.nil?
    end

    nil
  end

  def bfs(target_value)
    queue = []
    queue << self
    until queue.empty?
      first_node = queue.shift()
      return first_node if first_node.value == target_value
      first_node.children.each do |child|
        queue << child
      end
    end
    nil
  end

end

n1 = PolyTreeNode.new("root1")
n2 = PolyTreeNode.new("root2")
n3 = PolyTreeNode.new("root3")


