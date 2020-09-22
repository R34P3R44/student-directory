def input_students
  puts "Please neter the names of the students"
  puts "To finish, just hit return twice"
  # Adding an empty array
  students = []
  # Getting first user input
  name = gets.chomp
  # Adding the while loop
  while !name.empty? do
    # Adding the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # Getting second user input
    name = gets.chomp
  end
  # Returning student array
  students
end
# Adding all students into an array
=begin
 students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joeffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]
=end
# We start printing the information

def print_header
  puts "The Villains of my cohort at Makers"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end
# We call in some methods
students = input_students
print_header
print(students)
print_footer(students)
