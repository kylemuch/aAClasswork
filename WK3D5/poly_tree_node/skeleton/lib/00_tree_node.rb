require "byebug"

class PolyTreeNode
  attr_reader :parent, :value
  attr_accessor :children

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end


  def parent=(parent)
      @parent.children.delete(self) if @parent != nil
      @parent = parent
      @parent.children << self if @parent != nil
  end

  def add_child(child_node)
    child_node.parent = self
  end

  def remove_child(child_node)
    raise "Not a child" unless children.include?(child_node)
    child_node.parent = nil
  end

  def dfs(target_value)
    return self if target_value == self.value
    
    iterations = 1    
    children.each do |child|     
      
      iterations += 1
      result = child.dfs(target_value)
      if result.nil?
        p nil
      else
        p result.value
      end

      return result unless result.nil?
    end

    nil
  end

  def bfs(target_value)
    nodes = [self]
    p nodes
    nodes.each {|node|}
    until nodes.empty?
      node = nodes.shift
      return node if node.value == target_value
      nodes.concat(node.children)
    end

    nil
  end

end

# n1 = PolyTreeNode.new("root1")
# n2 = PolyTreeNode.new("root2")
# n3 = PolyTreeNode.new("root3")

# n3.parent = n1
# n3.parent = n2

# raise "Bad parent=!" unless n3.parent == n2
# raise "BadParent=!" unless n2.children == [n3]

num_nodes = (1..5).map {|num| PolyTreeNode.new(num)}

num_nodes[0].add_child(num_nodes[1])
num_nodes[0].add_child(num_nodes[2])
num_nodes[1].add_child(num_nodes[3])
num_nodes[1].add_child(num_nodes[4])

num_nodes.each {|node| node.children.each {|c| c.value}}
# num_nodes.each {|node| p node.parent.value}

ltr_node_1 = PolyTreeNode.new("A")
ltr_node_2 = PolyTreeNode.new("B")
ltr_node_3 = PolyTreeNode.new("C")
ltr_node_4 = PolyTreeNode.new("D")
ltr_node_5 = PolyTreeNode.new("E")
ltr_node_6 = PolyTreeNode.new("F")
ltr_node_7 = PolyTreeNode.new("G")

ltr_node_1.add_child(ltr_node_2)
ltr_node_1.add_child(ltr_node_3)

ltr_node_2.add_child(ltr_node_4)
ltr_node_2.add_child(ltr_node_5)

ltr_node_3.add_child(ltr_node_6)
ltr_node_3.add_child(ltr_node_7)

ltr_node_1.dfs("H")

ltr_node_1.bfs("G")








