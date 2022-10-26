i=1
temp = ""
count=0
while i<=120
    #p i
    temp = i.to_s.chars() 
    #p temp
    temp.each do |n|
        #p n
        if n == '6'
            puts n
            count +=1
        end
    end
    
    i +=1
    
end

#p count

