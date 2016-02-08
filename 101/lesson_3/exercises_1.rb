def line_break(question_number)
puts "Question: #{question_number}#------:"
end

# ex 1
line_break(1)
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
p numbers
puts numbers.inspect

uniq_numbers = numbers.uniq

puts uniq_numbers
p uniq_numbers

#ex 2
line_break(2)
puts 'Ex 2'
numbers2 = [1, 2, 2, 3]
numbers2.uniq!

puts numbers2

if 4 != 5
  puts '4 is not equal to 5'
end

user_name = 'Roedet'

puts !user_name

# question 3
line_break(3)
advice = "Few things in life are as important as house training your pet dinosaur."
new_advice = advice.gsub('important', 'urgent')
advice = advice.gsub!('important', 'urgent')

puts advice
puts new_advice

# question 4
line_break(4)
numbers3 = [1, 2, 3, 4, 5]
numbers3.delete_at(0)

p numbers3

numbers4 = [1, 2, 3, 4, 5]
numbers4.delete(3)

p numbers4

# question 5
line_break(5)
if (10..100).include?(42)
  p 'yes'
end

if (10..100).cover?(42)
  p 'yes'
end

# question 6
line_break(6)
famous_words = "seven years ago..."

puts "Four score and " + famous_words 
puts "Four score and " << famous_words
puts famous_words.prepend("Four score and ")

#question 7
line_break(7)
def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep

p eval(how_deep)

# question 8
line_break(8)
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

p flintstones

p flintstones.flatten!

#question 9
line_break(9)
flintstones_9 = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

p flintstones_9.assoc("Barney")
p flintstones_9.assoc("Wilma")
p flintstones_9.assoc("Fred")

#question 10
line_break(10)
flintstones_10 = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = {}
flintstones.each_with_index do |n, i|
  flintstones_hash[n] = i
end

p flintstones_hash
p flintstones_hash.assoc("Barney")
