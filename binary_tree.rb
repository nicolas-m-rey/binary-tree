class BinaryTree
    attr_accessor :root

    def initialize(node)
        self.root = node
    end

    def find(value)
       return true if root.value == value

       return find_helper(root, value)
    end

    def find_helper(node, value)
        return if node.nil?

        return true if node.value == value


        found = false
        found = find_helper(node.left, value)
        return found if found == true
        return find_helper(node.right, value)

    end
end

class Node
    attr_accessor :left, :right, :value

    def initialize(left=nil, right=nil, value=nil)
        self.left = left
        self.right = right
        self.value = value
    end

end

root = Node.new(nil, nil, 1)
child = Node.new(nil, nil, 2)
left_childs_child = Node.new(nil, nil, 3)
child.right = left_childs_child
root.left = child
bt = BinaryTree.new(root)
puts bt.root.value 
puts bt.root.left.value
puts bt.root.right

puts bt.find(8)
