# Enter your code here. Read input from STDIN. Print output to STDOUT

n = gets.strip.to_i
stdin = $stdin.read

stdin = stdin.split("\n")
#puts stdin
#puts stdin.class
phoneNumber = Hash.new
i=0
#stdin.each do |s|
#    s = s.split(" ")
#    phoneNumber[s[0]] = s[1]
#end

while i<n
    stdin[i] = stdin[i].split(" ")
    phoneNumber[stdin[i][0]] = stdin[i][1]
    i +=1
end
puts phoneNumber
#temp=[]
#while n<stdin.length
#    temp.push(stdin[n])
#    n +=1
#end
#puts temp

#phoneNumber.each do |name,key|
#    j=n
#    while j<stdin.length
#        if name == stdin[j]
#            puts "#{name}--#{key}"
#        else
#            puts "Not found"
#        end
#        j +=1
#    end
#end
j=n
while j<stdin.length
    if phoneNumber.has_key?(stdin[j])
        $stdout.puts "#{stdin[j]}=#{phoneNumber[stdin[j]]}"
    else
        $stdout.puts "Not found"
    end
    j +=1
end


