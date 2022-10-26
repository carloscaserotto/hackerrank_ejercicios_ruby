def showRE(a,re)
  if a =~ re
    "#{$`}<<#{$&}>>#{$'}"
  else
    "no match"
  end
end

a = "Fats Emilce"
re = /$Fats/
puts showRE(a,re)


place = /@[gmail.com]/
p /#{place}/.match("alice alice@alicegmail.com")
place = /@[gmail.com]/
re = Regexp.new '@gmail.com'
p re
p "alice@alicegmail.com".match re
p "alice@gmail.com".match re
