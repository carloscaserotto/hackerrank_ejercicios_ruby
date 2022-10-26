class Node
    attr_accessor :data,:next

    def initialize data
            @data = data
            @next = nil
    end
end

class Solution

    def insert(head,value)
        #Complete this method
        if(head.nil?)
            head = Node.new(value)
            #puts "Nodo:#{head}-#{head.data}-#{head.next}"
            return head
        else
            lastNode = head
            i = 0
            #puts lastNode.data
            while(!lastNode.next.nil?)
                lastNode = lastNode.next
                i +=1
            end
            lastNode.next = Node.new(value)
            #puts "Nodo #{i}:#{head.data}-#{head.next.data}-#{head.next}-#{lastNode} - #{lastNode.data} - #{lastNode.next.data}-#{lastNode.next.next}"
            #puts "Nodo #{i}:#{head.data}-#{head.next.data}-#{head.next.next}-#{lastNode} - #{lastNode.data} - #{lastNode.next.data}-#{lastNode.next.next}"
            #puts "Nodo #{i}:#{head.data}-#{head.next.data}-#{lastNode.data}-#{lastNode.next.data}"
            return head
        end
        
    end

	def display(head)
       current = head
       while current 
          print current.data," "
          current = current.next
       end
   end
end
       
mylist= Solution.new
head=nil
#data = 10
#head=mylist.insert(head,data)
#puts "#{head}-#{head.data}-#{head.next}"
#data = 20
#head=mylist.insert(head,data)
#puts "#{head}-#{head.data}-#{head.next.data}"
#puts "#{head} - #{head.data} - #{head.next.data}-#{head.next.next}"
#data = 30
#head=mylist.insert(head,data)
#data = 40
#head=mylist.insert(head,data)
#puts "Nodo:#{head.data} #{head.next.data} #{head.next.next.data} #{head.next.next.next.data}"
#data = 50
#head=mylist.insert(head,data)
#puts "Nodo:#{head.data} #{head.next.data} #{head.next.next.data} #{head.next.next.next.data} #{head.next.next.next.next.data}"
#mylist.display(head)
begin
T=gets.to_i
for i in 1..T
    data=gets.to_i
    head=mylist.insert(head,data)
end
mylist.display(head)
end