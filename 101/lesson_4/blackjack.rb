# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.
require 'pry'

def prompt(msg)
  puts "=>  #{msg}"
end

cards = %w( 2 3 4 5 6 7 8 9 10 J Q K A)
suits = %w(hearts diamonds clubs spades)
deck = []

player_cards = []
dealer_cards = []

suits.each do |suit|
  cards.each do |card|
    deck << [card, suit]
  end
end





def shuffle(deck)
  deck.shuffle!
end

def deal(hand, deck)
  hand << deck.pop
end

def display(cards)
  cards.join(', ')
end


def total(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] }

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

def display_table(player_cards, dealer_cards)
  prompt "DEALER"
  prompt "======"
  prompt " #{display(dealer_cards)}"
  prompt "------"
  prompt "total: #{total(dealer_cards)}"
  prompt "------"
  prompt ""
  prompt "PLAYER"
  prompt "======"
  prompt " #{display(player_cards)}"
  prompt "------"
  prompt "total: #{total(dealer_cards)}"
  prompt "------"
  prompt ""
end
# main loop
# loop do

shuffle(deck)
  2.times do
  deal(player_cards, deck)
  deal(dealer_cards, deck)
  end
display_table(player_cards, dealer_cards)

binding.pry

#end
