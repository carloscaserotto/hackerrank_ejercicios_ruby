ar=[1,2,3,4,5]

result = 0
ar[0...ar.length].each_with_index do |e, i|
    ar[i+1...ar.length].each do |j|
        p "#{e}-#{j}"
    end
end
