# Getting value from users.
puts "Enter the number of entries:"
number = gets
number=number.to_i
puts "Enter names:"
arr = Array.new
while (number>0)
  arr.push(gets.chomp)
  number-=1
end
length = arr.length

for i in (0...length)
  puts arr[i]
  count=0
  for j in (0...length)
    k=j+i
    if (i==k)
      next
    else
      if (arr[i]<=>arr[k])!=0
        next
      else
        count+=1
        arr[k]=arr[k]+count.to_s
      end
    end
  end
end
