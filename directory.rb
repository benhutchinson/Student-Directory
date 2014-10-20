# Arrange all the students into an array.

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

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-------------------"
end

def print(names)
	names.each do |name| 
		puts name
	end
end

def print_footer(names)
	puts "Overall we have #{names.length} great students"
end

# nothing happens until we call the methods

print_header
print(students)
print_footer(students)