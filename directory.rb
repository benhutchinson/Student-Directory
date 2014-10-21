def input_students
	print "Please enter the name of the students\n"
	print "To finish, just hit return twice\n"

	# create an empty array
	students = []

	# get the first name
	name = gets.chomp

	while !name.empty?
	
	print "What month are you joining Makers?\n"
	# defining the cohort
	cohort = gets.chomp
	if cohort.empty? 
	cohort = :undecided
	else
	cohort
	end

	puts "You are #{name} in the #{cohort} cohort."
	puts "If you are happy, type YES."
	puts "If you prefer to re-submit, type NO"

	happy = gets.chomp

	if happy.upcase == "YES"

	students << {:name => name, :cohort => cohort.to_sym}
	puts "Please enter the name of the next student:"
	name = gets.chomp

	else
	puts "Please start over.  What's your name?"
	name = gets.chomp

	end

	end

	print "Now we have #{students.length} students\n"
	# return the array of students
	students

end

def print_header
	puts "The students of my cohort at Makers Academy".center(60, "-")
	puts ""
	puts "-------------------".center(60, "/")
	puts ""
end

def list(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]})".center(60)
  end
end

def print_footer(students)
	puts ""
	puts "_"*60
	puts ""
	print "Overall we have #{students.length} great students\n".center(60)
	puts ""
	puts "_"*60
	puts ""
end

students = input_students
print_header
list(students)
print_footer(students)