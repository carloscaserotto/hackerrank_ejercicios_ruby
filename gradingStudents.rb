#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'gradingStudents' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY grades as parameter.
#

def gradingStudents(grades)
    # Write your code here
    i=0
    while(i < grades.length)
      if grades[i]>35 && grades[i]<40
        if 40 - grades[i] < 3
          grades[i] = 40
        end
      end
      if grades[i]>40 && grades[i]<45
        if 45 - grades[i] < 3
          grades[i] = 45
        end
      end
      if grades[i]>45 && grades[i]<50
        if 50 - grades[i] < 3
          grades[i] = 50
        end
      end
      if grades[i]>50 && grades[i]<55
        if 55 - grades[i] < 3
          grades[i] = 55
        end
      end
      if grades[i]>55 && grades[i]<60
        if 60 - grades[i] < 3
          grades[i] = 60
        end
      end
      if grades[i]>60 && grades[i]<65
        if 65 - grades[i] < 3
          grades[i] = 65
        end
      end
      if grades[i]>65 && grades[i]<70
        if 70 - grades[i] < 3
          grades[i] = 70
        end
      end
      if grades[i]>70 && grades[i]<75
        if 75 - grades[i] < 3
          grades[i] = 75
        end
      end
      if grades[i]>75 && grades[i]<80
        if 80 - grades[i] < 3
          grades[i] = 80
        end
      end
      if grades[i]>80 && grades[i]<85
        if 85 - grades[i] < 3
          grades[i] = 85
        end
      end
      if grades[i]>85 && grades[i]<90
        if 90 - grades[i] < 3
          grades[i] = 90
        end
      end
      if grades[i]>90 && grades[i]<95
        if 95 - grades[i] < 3
          grades[i] = 95
        end
      end
      if grades[i]>95 && grades[i]<100
        if 100 - grades[i] < 3
          grades[i] = 100
        end
      end
      i +=1
    end
    puts grades
    return grades
end

fptr = File.open("nota.txt", 'w')

grades_count = gets.strip.to_i

grades = Array.new(grades_count)

grades_count.times do |i|
    grades_item = gets.strip.to_i
    grades[i] = grades_item
end

result = gradingStudents grades

fptr.write result.join "\n"
fptr.write "\n"

fptr.close()

