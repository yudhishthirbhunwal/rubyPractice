puts "Enter the size of first array:"
size=gets.to_i
puts size
firstArray=Array.new
while (size>0)
  firstArray << gets.chomp
  size-=1
end
puts "\nThe first input array is:"
p firstArray

puts "Enter the size of second array:"
size=gets.to_i
puts size
secondArray=Array.new
while (size>0)
  secondArray << gets.chomp
  size-=1
end
puts "\nThe second input array is:"
p secondArray

print "\nThere is a common element in the arrays: "
subArray = firstArray & secondArray
if subArray.empty?
  puts false
else
  puts true
end