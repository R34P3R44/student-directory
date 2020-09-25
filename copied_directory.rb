@students = []

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  name = STDIN.gets.chomp
  # while the name is not empty, repeat the code
  while !name.empty? do
    # Adding the student hash to the array
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} student" if @students.count <= 1
    puts "Now we have #{@students.count} students" if @students.count > 1
    name = STDIN.gets.chomp
  end
end

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save list to students.csv"
  puts "4. Load list from students.csv"
  puts "9. Exit"
end

def show_students
  print_header
  print_student_list
  print_footer
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "3"
    save_students
  when "4"
    load_students
  when "9"
    exit
  else
    puts "I don't know what you meant, please try again"
  end
end

def print_student_list
  @students.each_with_index do |student, index|
    correct_index = index + 1
    puts "#{correct_index} #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def save_students
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def load_students(filename = "students.csv")
  file = File.open(filename, "r")
  file.readlines.each do |line|
  name, cohort = line.chomp.split(",")
    @students << {name: name, cohort: cohort.to_sym}
  end
  file.close
end

def try_load_students
  filename = ARGV.first # Frist argument from CMD
  return if filename.nil? # Exits method if none given
  if File.exists?(filename)
    load_students(filename)
    puts "Loaded #{@students.count} from #{filname}"
  else
    puts "sorry, #{filename} doesn't exists."
    exit
  end
end


def print_footer
  puts "Overall, we have #{@students.count} great students"
end

try_load_students
interactive_menu
