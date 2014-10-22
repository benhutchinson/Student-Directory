puts "The currently executed file is: " + __FILE__

@students = []
@chosen_file

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end

def print_students_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.length} great students"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # get the first name
  name = STDIN.gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    add_student(name, "november")
    puts "Now we have #{@students.length} students"
    # get another name from the user
    name = STDIN.gets.chomp
  end
end


def print_menu
    puts "1. Input the students"
    puts "2. Show the students"
    puts "3. Save the list"
    puts "4. Load a list"
    puts "9. Exit"
end

def show_students
    print_header
    print_students_list
    print_footer
end

def process(selection)
    case selection
      when "1"
      # input the students
      input_students

      when "2"
      # show the students
      show_students

      when "3"
      what_file
      save_students
      
      when "4"
      what_file
      load_students

      when "9"
      exit # this causes the program to terminates
      else
      puts "I don't know what you meant, try again."
    end
end

def interactive_menu
  
  loop do

    print_menu
    process(STDIN.gets.chomp)

  end
end

def what_file
  puts "What file shall we use?"
  @chosen_file = gets.chomp
end



def save_students
  # open a file for writing 
  file = File.open(@chosen_file, "w") do |file|
  # iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
end
end


def add_student(name, cohort)
  @students << {:name => name, :cohort => cohort.to_sym}
end

def load_students(filename = "students.csv")
  file = File.open(@chosen_file, "r") do |file|  
  file.readlines.each do |line|
    name, cohort = line.chomp.split(',')
    add_student(name, cohort)
  end
  end # file is automatically closed given the do end block completes here
end



def try_load_students
  filename = ARGV.first # first argument from the command line
  return if filename.nil? # get out of the method if it isn't given
  if File.exists?(filename) # does the actual file for filename exist?
    load_students(filename)
    puts "Loaded #{@students.length} students from #{filename}"
  else
    puts "Sorry, #{filename} doesn't exist"
    exit
  end
end

try_load_students
interactive_menu