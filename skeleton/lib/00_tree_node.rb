require 'byebug'
class PolyTreeNode

    attr_reader :value
    attr_accessor :children, :parent
 
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(parent_node) #self = child_node 
        return @parent = nil if parent_node.nil?
        if self.parent != nil
            og_parent = self.parent
            og_children = og_parent.children
            og_parent.children = og_children.select{ |ele| ele != self }    
        end
        @parent = parent_node #if self.parent == nil
        parent_node.children << self #if parent_node.children.include?(self)
    end

    def add_child(child_node)
       child_node.parent = self if !self.children.include?(child_node)
    end

    def remove_child(child_node)
        self.child
        og_parent = child_node
        child_node.parent = nil 


    end

end

