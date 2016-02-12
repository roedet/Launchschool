require 'pry'
# prompt
def prompt(msg)
  puts "=>  #{msg}"
end
# Initialize deck of cards
cards = %w( 2 3 4 5 6 7 8 9 10 J Q K A)
suits = %w(hearts diamonds clubs spades)
deck = []

suits.each do |suit|
    cards.each do |card|
      deck << [card, suit]
    end
end
# puts deck.inspect
# For every game shuffle new deck of cards
play_deck = deck.shuffle!
player_cards =[]
dealer_cards =[]
value_of_cards = 0

def deal(deck, cards)
  cards << deck.pop
end

def show_cards(cards)
  if cards != []
      cards.each { |c| c }
  end
end

def show_sum_of(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[0] }
  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end
  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > 21
  end
  sum
end



def show_player_hand(cards)
prompt "-------"
prompt "PLAYER"
prompt "-------"
show_cards(cards)
prompt "-------"
prompt "Value: #{show_sum_of(cards)}"
prompt "======="
prompt " "
end

def show_initial_dealer_hand(cards)
prompt "-------"
prompt "DEALER"
prompt "-------"
prompt "   X   "
prompt show_cards(cards)[0].join(' of ').upcase
binding.pry
prompt "-------"
prompt "Value: #{show_sum_of(cards)}"
prompt "======="
prompt " "
end



def busted?
 "your busted"
end


prompt "Welcome to the twenty-one game"

def player_turn
  answer = nil
  loop do
    puts "hit or stay?"
    answer = gets.chomp
    break if answer == 'stay' || busted?   # the busted? method is not shown
  end
  
  if busted?
    # probably end the game? or ask the user to play again?
  else
    puts "You chose to stay!"  # if player didn't bust, must have stayed to get here
  end
end



prompt "press anny key to start the game"
start = gets.chomp
system 'clear'
loop do

  #initial_deal(player_cards, dealer_cards)
  2.times do
  deal(play_deck, player_cards)
  deal(play_deck, dealer_cards)
  end
  show_initial_dealer_hand(dealer_cards)
  show_player_hand(player_cards)
  
  
  
player_turn


#binding.pry


system 'clear'
end

