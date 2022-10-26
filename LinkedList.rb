class LinkedList
    attr_accessor :head

    def initialize
        #@head = nil
        self.head = nil
    end

    def add(value)
        if (self.head.nil?)
            self.head = Node.new(value,nil)
        else
            lastNode = self.head
            while(!lastNode.nextNode.nil?)
                lastNode = lastNode.nextNode
            end
            #we are at the end of the list
            lastNode.nextNode = Node.new(value,nil)
        end
        
    end

    def printList
        if (self.head.nil?)
            puts "There is not LinkedList"
        else
            lastNode = self.head
            puts "#{lastNode.value}"    
            while(!lastNode.nextNode.nil?)
                lastNode = lastNode.nextNode
                puts "#{lastNode.value}"
            end            
        end
        
        
    end
   
   
    private

    class Node
        attr_accessor :value, :nextNode

        def initialize(value,nextNode)
            self.value = value
            self.nextNode = nextNode
            #@value = value
            #@nextNode = nextNode
        end
    end

end


ll = LinkedList.new
head=ll.add(10)
head=ll.add(20)
head=ll.add(30)
head=ll.add(40)
#puts ll.head.value
#puts ll.head.nextNode.value
#puts ll.head.nextNode.nextNode.value
#puts ll.head.nextNode.nextNode.nextNode.value
ll.printList