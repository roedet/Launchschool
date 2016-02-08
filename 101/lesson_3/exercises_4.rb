def line_break(question_number)
puts "Question: #{question_number}#------:"
end

# question 1
line_break(1)
p 10.times { |number| puts (" " * number) + "The Flintstones Rock!" }
line_break(2)
statement = "The Flintstones Rock"

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

p result

# question 3
line_break(3)
puts "the value of 40 + 2 is " + (40 + 2).to_s

# question 4
line_break(4)

# question 5
line_break(5)

# question 6
line_break(6)

#question 7
line_break(7)
limit = 15

def fib(first_num, second_num, limit)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"
# question 8
line_break(8)

#question 9
line_break(9)

#question 10
line_break(10)
