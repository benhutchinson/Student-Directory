def input_students
	print "Please enter the name of the students\n"
	print "To finish, just hit return twice\n"

	# create an empty array
	students = []

	# get the first name
	name = gets.chomp

	# while the name is not empty, repeat this code
	while !name.empty? do
		# add the student hash to the array
		students << {:name => name, :cohort => :november}
		print "Now we have #{students.length} students\n"
		# get another name from the user
		name = gets.chomp
	end
	# return the array of students
	students
end

def print_header
	print "The students of my cohort at Makers Academy\n"
	print "-------------------\n"
end

def list(students)
	student_filter = students.select do |student| student[:name][0].upcase.include? "A" end
	filter = student_filter.each_with_index do |student, index| 
		print "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort}\n"
	end
end

def print_footer(filter)
	print "Overall we have #{filter.length} great students whose name begins with 'A'\n"
end

students = input_students
print_header
filter = list(students)
print_footer(filter)
