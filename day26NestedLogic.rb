# Enter your code here. Read input from STDIN. Print output to STDOUT
=begin
If the book is returned on or before the expected return date, no fine will be charged (i.e.:fine=0).
If the book is returned after the expected return day but still within the same calendar month and year as the expected return date, .
If the book is returned after the expected return month but still within the same calendar year as the expected return date, the .
If the book is returned after the calendar year in which it was expected, there is a fixed fine of .
=end

stdin = $stdin.read
#puts stdin
#puts stdin.class

stdin= stdin.rstrip.split.map(&:to_i)

date_return = stdin[0..2]
due_date =stdin[3..stdin.length]
fine = 0



#puts "day = #{date_return[0]}, month = #{date_return[1]}, year = #{date_return[2]} (date returned)"
#puts "day = #{due_date[0]}, month = #{due_date[1]}, year = #{due_date[2]} (date due)"

def fine(stdin)
    day_return = stdin[0]
    month_return = stdin[1]
    year_return = stdin[2]
    due_day = stdin[3]
    due_month = stdin[4]
    due_year = stdin[5]

    if due_year < year_return
        return fine = 1000
    elsif due_year == year_return && month_return > due_month
        return 500 * (month_return-due_month)
    elsif due_year == year_return && month_return == due_month && day_return > due_day
        return 15 * (day_return - due_day)
    else
        return 0
    end
    
end
stdin = fine(stdin)
p stdin