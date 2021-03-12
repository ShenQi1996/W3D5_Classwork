require 'byebug'
class PolyTreeNode

    attr_reader :parent, :children, :value
 
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(parent_node) #self = child_node 
        orginal_parent = self.parent
        @parent = parent_node #if self.parent == nil
        orginal_parent.children.select { |ele| ele != self }
        parent_node.children << self #if parent_node.children.include?(self)
    end

end

