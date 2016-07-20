-----------------------------------------------------------
A. Given the following data structure:

lines = ['Gyle Centre', 'Edinburgh Park', 'Murrayfield Stadium', 'Haymarket', 'Princes Street']

-----------------------------------------------------------
Work out how many stops there are in the current west array:
lines.length or lines.size
-----------------------------------------------------------
Return 'Edinburgh Park' from the array:
lines[1] or lines.at(1)
-----------------------------------------------------------
How many ways can we return 'Princes Street' from the array?:
lines.last
lines[-1]
lines[4]
lines.pop
lines.delete('Princes Street')
lines.delete_at(4)
lines.drop(4)*""
lines.rotate(-1).shift
lines.to_s[-16,14]

#if you're feeling lucky..
lines.sample
-----------------------------------------------------------
Work out the index position of 'Haymarket':

lines.index('Haymarket') 

or

for i in 0..lines.length-1
  return i if lines[i]=='Haymarket'
end

-----------------------------------------------------------
Add 'Airport' to the start of the array:
lines.unshift("Airport")
-----------------------------------------------------------
Add 'York Place' to the end of the array:
lines.push("York Place")
-----------------------------------------------------------
Remove 'Edinburgh Park' from the array using it's name:
delete("Edinburgh Park")
^^This will delete ALL instances of Edinburgh park.
-----------------------------------------------------------
Delete 'Edinburgh Park' from the array by index:
delete_at(1)
-----------------------------------------------------------
Reverse the positions of the stops in the array
lines.reverse
-----------------------------------------------------------
Print out all of the stops using a for loop and a while loop

for stop in lines #loop over array
  print stop + "" #print value
end

i=1 #set counter
while i < lines.length #setting range to array length
  puts lines[i]   #print value
  i += 1          #up counter
end

-----------------------------------------------------------
-----------------------------------------------------------

B. Given the following data structure:

  my_hash = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}
How would you return the string "One"? myhash["1"]
How would you return the string "Two"? myhash[:two]
How would you return the number 2?     myhash["two"]
How would you add {3 => "Three"} to the hash? my_hash[3]="Three"
How would you add {:four => 4} to the hash? myhash[:four]= 4

-----------------------------------------------------------
-----------------------------------------------------------


C. Given the following data structure:

  users = {
    "Jonathan" => {
      :twitter => "jonnyt",
      :favourite_numbers => [12, 42, 75, 12, 5],
      :home_town => "Stirling",
      :pets => {
        "fluffy" => :cat,
        "fido" => :dog,
        "spike" => :dog
      }
    },
    "Erik" => {
      :twitter => "eriksf",
      :favourite_numbers => [8, 12, 24],
      :home_town => "Linithgow",
      :pets => {
        "nemo" => :fish,
        "kevin" => :fish,
        "spike" => :dog,
        "rupert" => :parrot
      }
    },
    "Avril" => {
      :twitter => "bridgpally",
      :favourite_numbers => [12, 14, 85, 88],
      :home_town => "Dunbar",
      :pets => {
        "colin" => :snake
      }
    },
  }
Return Jonathan's Twitter handle (i.e. the string "jonnyt")
users["Jonathan"][:twitter]
-----------------------------------------------------------
Return Erik's hometown
users["Erik"][:home_town]
-----------------------------------------------------------
Return the array of Erik's favorite numbers
users["Erik"][:favourite_numbers]
-----------------------------------------------------------
Return the type of Avril's pet Colin
users["Avril"][:pets]["colin"]
-----------------------------------------------------------
Return the smallest of Erik's favorite numbers

for number in users["Erik"][:favourite_numbers]
  smallnum ||= users["Erik"][:favourite_numbers][2]
  smallnum = number if number<smallnum
end
return smallnum

-----------------------------------------------------------
Return an array of Avril's favorite numbers that are even

for number in users["Avril"][:favourite_numbers]
  numbarr ||= []
  numbarr.push(number) if number%2 == 0
end
return numbarr
-----------------------------------------------------------
Return an array of Jonathans favourite numbers, sorted in ascending order and excluding duplicates

users["Jonathan"][:favourite_numbers].uniq.sort

#or alternatively

array = users["Jonathan"][:favourite_numbers]
sort = true
while (sort)
  sort = false
  for i in 0..array.length-2
    if array[i] > array[i+1]
      array[i], array[i+1] = array[i+1], array[i]
      puts "sorting"
      sort = true
    elsif array[i] == array[i+1]
      array.delete_at(i+1)
      sort = true
    end
  end
end
return array

-----------------------------------------------------------
Add the number 7 to Erik's favorite numbers

users["Erik"][:favourite_numbers].push(7)
-----------------------------------------------------------
Change Erik's hometown to Edinburgh
users["Erik"][:home_town] = "Edinburgh"
-----------------------------------------------------------
Add a pet dog to Erik called "Fluffy"
users["Erik"][:pets]["Fluffy"] = :dog
-----------------------------------------------------------
Add yourself to the users hash


#declare a new key with the values that are to fallow
users["Michael"] = {
  :twitter => "Whosaidthat", #can alternatively use '":twitter => "Whosaidthat"'
  :favourite_numbers => [6.36*(10**-34), 6.67*(10**11)],
  :home_town => "Kirkcaldy",
  :pets => {
    "brandy" => :cat,
    "holly" => :cat,
    "toast" => :cat,
    "gypsy" => :dog,
    "scruffles" => :dog
  }
}


