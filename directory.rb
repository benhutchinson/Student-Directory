def input_students
	print "Please enter the name of the students\n"
	print "To finish, just hit return twice\n"

	# create an empty array
	students = []

	# get the first name
	name = gets.chomp

	print "Please enter the country of origin\n"

	# add the country of origin
	country = gets.chomp

	print "Any hobbies?\n"

	# add the country of origin
	hobbies = gets.chomp

	# while the name is not empty, repeat this code
	while !name.empty? do
		# add the student hash to the array
		students << {:name => name, :cohort => :november, :country => country, :hobbies => hobbies}
		print "Now we have #{students.length} students\n"
		# get another name from the user
		name = gets.chomp
	end
	# return the array of students
	students
end

def print_header
	puts "The students of my cohort at Makers Academy".center(60, "-")
	puts "-------------------".center(60, "/")
	puts ""
end

def list(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort from #{student[:country]} who likes #{student[:hobbies]})".center(60, "-")
  end
end

def print_footer(students)
	print "Overall we have #{students.length} great students\n"
end

students = input_students
print_header
list(students)
print_footer(students)
