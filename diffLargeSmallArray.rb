puts "Enter the size of array:"
size=gets.to_i
puts size
arr=Array.new
while (size>0)
  arr << gets.to_i
  size-=1
end
puts "\nThe input array is:"
p arr

largest=arr[0]
smallest=arr[0]

arr.each do |var|
      if (smallest>=var)
          smallest=var
      end
      if (largest<=var)
          largest=var
      end
end
puts "\nThe difference between largest and smallest number in this array is:"
puts largest-smallest