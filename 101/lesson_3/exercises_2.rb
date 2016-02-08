def line_break(question_number)
puts "Question: #{question_number}#------:"
end

# question 1
line_break(1)
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
p ages.key?("Spot")
p ages.include?("Spot")
p ages.member?("Spot")

# question 2
line_break(2)
ages_2 = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
p ages_2.values.inject(:+)

# question 3
line_break(3)
ages_3 = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
p ages.keep_if { |name, age| age < 100 }

# question 4
line_break(4)
munsters_description = "The Munsters are creepy in a good way."

p munsters_description.gsub('Munsters', 'munsters') # "The munsters are creepy in a good way."

p munsters_description.upcase().gsub('MUNSTERS', 'mUNSTERS') #"tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
p munsters_description.downcase() #"the munsters are creepy in a good way."
p munsters_description.upcase() #"THE MUNSTERS ARE CREEPY IN A GOOD WAY."

p munsters_description.capitalize!
p munsters_description.swapcase!
p munsters_description.downcase!
p munsters_description.upcase!

# question 5
line_break(5)
ages_5 = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

p ages_5.merge!(additional_ages)

# question 6
line_break(6)
ages_6 = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.values.min

#question 7
line_break(7)
advice = "Few things in life are as important as house training your pet dinosaur. Dino"

p advice.include?('Dino')
p advice.match('Dino')
# question 8
line_break(8)
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.index { |name| name[0, 2] == "Be" }
#question 9
line_break(9)
flintstones_1 = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones_1.map! do |name|
  name[0, 3]
end

p flintstones_1

#question 10
line_break(10)
flintstones_2 = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones_2.map! { |name| name[0,3] }