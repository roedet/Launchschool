def line_break(question_number)
puts "Question: #{question_number}#------:"
end

# question 1
line_break(1)
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones_1 = %w(Fred Barney Wilma Betty BamBam Pebbles)

# question 2
line_break(2)
flintstones_2 = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones_2 << "Dino"



# question 3
line_break(3)
flintstones_2.push("Dino").push("Hoppy")
flintstones_2.concat(%w(Dino Hoppy)) 


# question 4
line_break(4)
advice = "Few things in life are as important as house training your pet dinosaur."

p advice.slice(0, advice.index('house'))
p advice
p advice.slice!(0, advice.index('house'))
p advice
# question 5
line_break(5)

statement = "The Flintstones Rock!"
p statement.scan('t').count

# question 6
line_break(6)
title = "Flintstone Family Members"

p title.center(40)


#question 7
line_break(7)

# question 8
line_break(8)

#question 9
line_break(9)

#question 10
line_break(10)
