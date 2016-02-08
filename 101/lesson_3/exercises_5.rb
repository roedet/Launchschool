def line_break(question_number)
puts "Question: #{question_number}#------:"
end

# question 1
line_break(1)
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}

total_male_age = 0
munsters.each do |name, details|
  total_male_age += details["age"] if details["gender"] == "male"
end

p total_male_age
# question 2
line_break(2)
munsters_2 = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}


munsters_2.each do |name, details|
  puts " #{name} is a #{ details["age"] } year old #{ details["gender"] }"
end


# question 3
line_break(3)

# question 4
line_break(4)

# question 5
line_break(5)

# question 6
line_break(6)

#question 7
line_break(7)

# question 8
line_break(8)

#question 9
line_break(9)

#question 10
line_break(10)
