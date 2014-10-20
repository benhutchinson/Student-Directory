students = [
"Darko Milanic",
"Mirco Antenucci",
"Marco Silvestri",
"Giuseppe Bellusci",
"Gaetano Berardi",
"Sam Byram",
"Stephen Warnock",
"Liam Cooper",
"Jason Pearce",
"Rodolph Austin",
"Tommasso Bianchi",
"Lewis Cook",
"Alex Mowatt",
"Luke Murphy",
"Nicky Ajose",
"Billy Sharp",
"Souleymane Doukara"
]

# Now let's print them

puts "The students of my cohort at Makers Academy"
puts "-------------------"

students.each do |student| 
	puts student
end

# Finally, we print the total.
puts "Overall we have #{students.length} great students"