class Node
    attr_accessor :data,:next

    def initialize data
          @data = data
          @next = nil
      end
  end
  
  class Solution
  
      def removeDuplicates(head)
        #write your code here  
        return if head == nil
        myTempList= Solution.new
        temp =[]
        current_node = head
        while current_node != nil 
            temp.push(current_node.data)
            current_node = current_node.next
        end
        i=0
        kbz=nil
        temp = temp.uniq
        while i<temp.length
            data=temp[i]
            kbz=myTempList.insert(kbz,data)
            i+=1
        end
        head = kbz
        return head
      end
  
      def insert(head,value)
          p=Node.new(value)
          if head==nil
               head=p
          elsif head.next==nil
               head.next=p
          else  
            current = head
            while current.next != nil
                current = current.next
            end 
            current.next = p
          end
        return head   
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
  T=gets.to_i
  for i in 1..T
      data=gets.to_i
      head=mylist.insert(head,data)
  end

  head=mylist.removeDuplicates(head)
  mylist.display(head)