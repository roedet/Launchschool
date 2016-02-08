VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock') && (second == 'scissors') ||
    (first == 'paper') && (second == 'rock') ||
    (first == 'scissors') && (second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('You have won')
  elsif win?(computer, player)
    prompt('Computer has won')
  else
    prompt('It is a tie')
  end
end

loop do
  user_choice = ''
  loop do
    prompt("choose one: #{VALID_CHOICES.join(', ')}")
    user_choice = Kernel.gets().chomp()
    if VALID_CHOICES.include?(user_choice)
      break
    else
      prompt("That is not a valid choice")
    end
  end
  computer_choice = VALID_CHOICES.sample
  Kernel.puts("You chose: #{user_choice}. The computer chose #{computer_choice}")
  display_results(user_choice, computer_choice)
  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing")
