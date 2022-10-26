class Person
	def initialize(firstName, lastName, id)
		@firstName = firstName
		@lastName = lastName
		@id = id
	end
	def printPerson()
		print("Name: ",@lastName , ", " + @firstName ,"\nID: " , @id)
	end
end

class Student <Person
    #   Class Constructor
    #   
    #   Parameters:
    #   firstName - A string denoting the Person's first name.
    #   lastName - A string denoting the Person's last name.
    #   id - An integer denoting the Person's ID number.
    #   scores - An array of integers denoting the Person's test scores.
    #
    # Write your constructor here
    def initialize(firstName, lastName, id, scores)
        super(firstName, lastName, id)
        @scores = scores
      end

    #   Function Name: calculate
    #   Return: A character denoting the grade.
    #
    # Write your function here
    def calculate()
        prom = 0
        grade = ''
        #puts "#{@scores}"
        @scores.each do |score|
            prom = prom + score
        end
        #puts "#{prom}"
        prom = prom/@scores.length
        #puts "Promedio: #{prom}"
        if prom >90 && prom <= 100
            grade = "O"
        elsif prom <= 90 && prom >=80
            grade = "E"
        elsif prom < 80 && prom >=70
            grade = "A"
        elsif prom < 70 && prom >=55
            grade = "P"
        elsif prom <= 55 && prom >=40
            grade = "D"
        elsif prom < 40
            grade = "T"
        end
        return grade
	end
    
end

=begin
firstName = "Carlos"
lastName ="Case"
id = 123456
scores = [7,8,6,2,10]

person1 = Student.new(firstName,lastName,id,scores)
person1.printPerson()
person1.calculate()
=end

input = gets.split()
firstName = input[0]
lastName = input[1]
id = input[2].to_i
numScores = gets.to_i
scores = gets.strip().split().map!(&:to_i)
#puts "#{scores}"
s = Student.new(firstName, lastName, id, scores)
s.printPerson           
print("\nGrade: " + s.calculate)
