stdin = $stdin.read
#stdin = stdin.split(/\n/)
#stdin = stdin.join(" ")
#stdin = stdin.split(/\n/)
#stdin = stdin.delete_if(&:empty?)
#stdin = stdin.join(" ")
#puts stdin
#puts stdin.class


def camelCase(stdin)
    # Write your code here
    #puts stdin
    stdin = stdin.split("\n").delete_if(&:empty?)
    #puts stdin
    #puts stdin.class
    #s = stdin.join("")
    #puts s
    stdin.each do |s|
      s = s.split(";")
      #puts s
      name = s[2].gsub(/[\(\)]/, '')
      if s[0] == "S" || s[0] == "s"
          if s[1] == "M" || s[1] == "m"
              $stdout.puts name = name.split(/([[:upper:]][[:lower:]]*)/).delete_if(&:empty?).join(" ").downcase
          end
          if s[1] == "C" || s[1] == "c"
              $stdout.puts name = name.split(/([[:upper:]][[:lower:]]*)/).delete_if(&:empty?).join(" ").downcase
          end
          if s[1] == "V" || s[1] == "v"
            $stdout.puts name = name.split(/([[:upper:]][[:lower:]]*)/).delete_if(&:empty?).join(" ").downcase
          end
       end
       if s[0] == "C" || s[0] == "c"
         if s[1] == "V" || s[1] == "v"
           name = name.split(/ |\_|\-/)
           temp = (1...name.length).map { |i| name[i].capitalize }.join("")
           $stdout.puts name[0].to_s+temp
          end
         if s[1] == "C" || s[1] == "c"
           $stdout.puts name = name.split(/ |\_|\-/).map(&:capitalize).join("")
         end
         if s[1] == "M" || s[1] == "m"
           name = name.split(/ |\_|\-/)
           temp = (1...name.length).map { |i| name[i].capitalize }.join("")
           $stdout.print name[0].to_s+temp+"()"+"\n"
         end
      end
    end

end
camelCase(stdin)
