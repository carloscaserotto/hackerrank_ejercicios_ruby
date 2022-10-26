class Node
    attr_accessor :left, :right, :value

    def initialize(value)
        self.left = left
        self.right = right
        self.value = value
    end
end

class BinaryTreeSearch
    attr_accessor :root, :size

    def initialize(node)
        @root = node
        @size = 0
    end

    def insert(value)
        if @root == nil
            @root = Node.new(value)
        else
            current_node = @root
            previous_node = @root
            while current_node != nil
                previous_node = current_node
                if value < current_node.value
                    current_node = current_node.left
                else
                    current_node = current_node.right
                end
            end
            if value < previous_node.value
                previous_node.left = Node.new(value)
            else
                previous_node.right = Node.new(value)
            end
        
        end
        @size +=1
    end


    def find(value)
        return true if root.value == value
        return find_helper(root,value)

    end

    def find_helper(node, value)
        return if node.nil?

        return true if node.value == value

        found = false
        found = find_helper(node.left,value)
        return found if found == true
        return find_helper(node.right,value)
    end
end


root = Node.new(10)

bts = BinaryTreeSearch.new(root)

bts.insert(4)
bts.insert(11)
bts.insert(12)

#p root
pp bts

=begin
root = Node.new(nil,nil,1)
child = Node.new(nil,nil,2)
left_child_child = Node.new(nil,nil,3)
child.left = left_child_child
right_child_child = Node.new(nil,nil,6)
child.right = right_child_child
root.left = child
bt = BinaryTree.new(root)
=end






