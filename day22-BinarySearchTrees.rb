class Node
    attr_accessor :left,:right,:data
  def initialize data
      @left=@right=nil
      @data=data
    end
end
class Solution
    def insert (root,data)
        if root==nil
            return Node.new(data)
        else
            if data<=root.data
                cur=self.insert(root.left,data)
                root.left=cur
            else
                cur=self.insert(root.right,data)
                root.right=cur
            end
        end
        return root
    end

    def getHeight(root)
      #Write your code here
      #puts "getHeight"
      return find_lastNode_helper(root)
    end

    def find_lastNode_helper(node, size=0)
        size_left, size_right = 0,0
        return size if node.nil?
        return size if node.left == nil && node.right == nil
        size +=1
        size_left = find_lastNode_helper(node.left,size)
        puts "size_left: #{size_left}"
        size_right = find_lastNode_helper(node.right,size)
        puts "size_right: #{size_right}"
        size = size_left
        if size < size_right
            size = size_right
        end
        return size
        
    end
end

myTree=Solution.new
root=nil
T=gets.to_i
for i in 1..T
    data=gets.to_i
    root=myTree.insert(root,data)
end
height=myTree.getHeight(root)
print height