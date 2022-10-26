class Person
    attr_accessor :initialAge
    
    def initialize(initialAge)
        # Add some more code to run some checks on initialAge 
        if(initialAge>0)
            @initialAge = initialAge
        else
            @initialAge = 0
            puts("Age is not valid, setting age to 0.")
        end      
    end
    def amIOld()
      # Do some computations in here and print out the correct statement to the console
      if(@initialAge<13)
            puts "You are young."
        elsif(@initialAge>= 13 && @initialAge<18)
            puts "You are a teenager."
        else
            puts "You are old."
        end
    end
    def yearPasses()
      # Increment the age of the person in here
      @initialAge +=1
    end
end

T=gets.to_i

for i in (1..T)do
    age=gets.to_i
    p=Person.new(age)
    p.amIOld()
    for j in (1..3)do
        p.yearPasses()
    end
    p.amIOld
  	puts ""
end     