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
    def levelOrder(root)
        #Write your code here
        levelOrder_helper(root)
    end

    def levelOrder_helper(node)
      queue=[];  #first in, first out
      output=[]; #storing the output
      queue.push(node); #store the first node, which is root into queue
      while(!queue.empty?) # when the queue is not empty
          current = queue.shift; # get the first element of the queue 
          if(current.left) then queue.push(current.left) end #from left
          if(current.right) then queue.push(current.right)end #to right
          output.push(current.data) #store value to output
      end
      #puts "Breadth-first traversal:" #print the output
      puts output.join(" ")
    end
    
    
end

myTree=Solution.new
root=nil
T=gets.to_i
for i in 1..T
    data=gets.to_i
    root=myTree.insert(root,data)
end
myTree.levelOrder(root)
