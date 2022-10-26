array = [0,1,0,1,2,0,0,0,1,4]
#p array.map { |s| s<2}
p array.select { |number| number < 2 }.max
p array
i = 5
num = 0

while i > num  do
   puts("Inside the loop i = #{i}" )
   i -=1
end