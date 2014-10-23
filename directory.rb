@students = []

def input_students
	print "Please enter the name of the student\n"
	print "To finish, just hit return twice\n"

	# get the first name
	name = gets.chomp

	while !name.empty?
	
	print "What month are they joining Makers?\n"
	# defining the cohort
	cohort = gets.chomp
	if cohort.empty? 
	cohort = :undecided
	else
	cohort
	end

	puts "You have submitted #{name} in the #{cohort} cohort."
	puts "If you are happy, type YES."
	puts "If you prefer to re-submit, type NO"

	happy = gets.chomp

	if happy.upcase == "YES"

	@students << {:name => name, :cohort => cohort.to_sym}
	puts "Please enter the name of the next student:"
	name = gets.chomp

	else
	puts "Please start over.  What's the student's name?"
	name = gets.chomp

	end

	end

	if @students.length == 1
		print "Now we have #{@students.length} student\n"
	else
		print "Now we have #{@students.length} students\n"
	end
	# return the array of students
	@students

end

def print_header
	puts ""
	puts ""
	puts "The students of my cohort at Makers Academy".center(60, "-")
	puts ""
	puts "-------------------".center(60, "/")
	puts ""
end

def list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]})".center(60)
  end
end

def print_footer
	puts ""
	puts ""
	puts "_"*60
	puts ""
		if @students.length == 1
		print "Overall, we have #{@students.length} great student\n".center(60)
		else 
		print "Overall, we have #{@students.length} great students\n".center(60)
		end
	puts ""
	puts "_"*60
	puts ""
end

def print_by_cohort

	puts ""
	print "COHORT SPLIT".center(60)
	puts ""
	puts ""
	puts "Quick Test"
	puts @students[0][:cohort]
	puts @students[1][:name]
	puts @students.length
	puts ""
	puts "Here is the full array of hashes"
	puts @students
	puts ""
	puts "Let's try and list all the :cohort key values"
	@students.each {|x| puts x[:cohort]}
	puts ""
	puts "Now let's only list the unique :cohort key values"
	
	new_arr = []
	@students.each {|x| 

		new_arr << x[:cohort]
	
	}
	puts new_arr.uniq
	
	puts ""
	puts "Which cohort shall we list?  You decide"
	cohort_dec = gets.chomp
	test_arr =[]

	@students.each {|x| 
		if x[:cohort].to_s == cohort_dec
			test_arr << x[:name]
		else
		end
		 }

		 puts test_arr.length
 
 	if test_arr.length == 0
 		puts "Sorry, there are none."
	else
		puts test_arr
	end


puts "____" * 10
puts "THE GRAND FINALE".center(60)
	puts "How about we just list them all anyway by cohort?"

	groups = new_arr.uniq

	groups.each {|x| 

		puts "The #{x} cohort is as follows:"
		@input_month = "#{x}"
		coh_test

	}

end


def coh_test
		
	@students.each {|hash| 
		if hash[:cohort].to_s == @input_month.to_s
		puts hash[:name]
		else
		end

		}

end

input_students
print_header
list
print_footer
print_by_cohort
@input_month = nil