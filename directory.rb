# Adding all students into an array
students = [
  "Dr. Hannibal Lecter"
  "Darth Vader"
  "Nurse Ratched"
  "Michael Corleone"
  "Alex DeLarge"
  "The Wicked of the West"
  "Terminator"
  "Freddy Krueger"
  "The Joker"
  "Joeffrey Baratheon"
  "Norman Bates"
]
# Printing students
puts "The students of Villains Academy"
puts "-------------"
students.each do |student|
  puts student
end
# We print the total number of students
puts "Overall, we have #{students.count} great students"
