totalNotes = Hash.new("note")
totalNotes = {"2000"=>5, "500"=>10, "200"=>20, "100"=>40}

#Total Cash in ATM
totalCash=0
totalNotes.each do |key,value|
  totalCash+=key.to_i*value
end
puts "Total Cash in ATM: #{totalCash}"

puts "\nDenominations available in ATM:"
puts totalNotes

userBalance=10000

#Withdrawal of Cash
puts "\nEnter Withdraw Amount"
withdraw=gets.to_i
puts withdraw
wd=withdraw

if(withdraw<=userBalance && withdraw%100==0)
    puts "\nNotes Dispensed:"
    totalNotes.each do |key,value|
        n=wd/key.to_i
        wd-=key.to_i*n
        totalNotes[key] = value-n
        puts "#{key} Notes: #{n}"
    end

    puts "\nNumber of notes left in ATM:"
    puts totalNotes

    userBalance-=withdraw
    puts "\nBalance Left: #{userBalance}"

elsif(withdraw>userBalance)
    puts "\nInsufficient Balance"

else
    puts "\nPlease enter amount in the multiples of 100"
end

#Deposition of Cash
puts "\nEnter amount to be Deposited:"
deposit=gets.to_i
puts deposit
puts "\nEnter the denominations in the following sequence:
2000 Notes, 500 Notes, 200 Notes and 100 Notes respectively"
depositNotes = {"2000"=>0, "500"=>0, "200"=>0, "100"=>0}
depositNotes.each do |key, value|
    depositNotes[key]=gets.to_i
end
puts "\nThe denominations to be deposited:"
puts depositNotes
newTotalNotes={"2000"=>0, "500"=>0, "200"=>0, "100"=>0}
newTotalNotes.each do |key, value|
    newTotalNotes[key]=totalNotes[key]+depositNotes[key]
end
puts "\nTotal Cash in ATM after deposition:"
puts newTotalNotes
totalCash=0
newTotalNotes.each do |key, value|
    totalCash+=key.to_i*value
end
puts "\nTotal Cash in ATM: #{totalCash}"