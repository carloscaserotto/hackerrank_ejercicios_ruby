t = gets.to_i
stdin = $stdin.read
#puts stdin
#puts stdin.class
s = stdin.split("\n")
#s = stdin.delete!("\n")
#puts s
#puts s.class
#s = gets.split(" ")
#puts s
#puts s.class
j=0
#s=[]
temp=''
#while j < t
#    temp = gets.delete!("\n")
#    s.push(temp)
#    j += 1
#end
#puts s.lenght
def separar(str)
    if str !=0
        i=0
        even=[]
        odd=[]
        str_l = str.length
        while(i<str_l)
            even[i] = str[2*i+1]
            odd[i] = str[2*i]
            i +=1
        end
        s_even = even.join()
        s_odd = odd.join()
        str = "#{s_odd} #{s_even}"
    end
    return str
end

s.each do |str|
    str = separar(str)  
    $stdout.puts str  
end
