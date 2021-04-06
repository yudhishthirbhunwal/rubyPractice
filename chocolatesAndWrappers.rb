puts "Enter the amount for buying chocolate:"
money = gets.to_i
puts money
cost=1
totalItems=0
toffee=money/cost
wrapper=toffee

while(toffee>0)
totalItems=totalItems+toffee
toffee=wrapper/3
wrapper=toffee+wrapper%3
end
puts "The total number of items bought is #{totalItems}"