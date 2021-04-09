firstString = "racecar"
secondString = "carrace"
p firstString, secondString
firstArray = firstString.split('').sort
secondArray = secondString.split('').sort
puts firstArray.eql?(secondArray)