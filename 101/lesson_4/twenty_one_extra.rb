require 'pry'

SUITS = %w(harts clubs spades diamant)
CARD_VALUES = %w( 2 3 4 5 6 7 8 9 10 J Q K A)
GAMEVALUE = 21

ISVISIBLE = 1

play_deck = []
player_cards = []
dealer_cards = []


def initialize_deck
  CARD_VALUES.product(SUITS).shuffle
end

def deal(cards, deck)
  cards << deck.pop
end

def display(cards, visible=1)
  if visible == 1
    cards.each do |c|
      puts "=> " + c.join(' of ').upcase
    end
  else
    puts "=>    ?   "
    puts "=> " + cards[1].join(' of ').upcase
  end
binding.pry
end
binding.pry
def total(cards, visible=1)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  if visible == 1
    values = cards.map { |card| card[0] }
  else
    value_cards = cards.map { |card| card[0] }
    values = value_cards.last(1)
  end

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
    sum -= 10 if sum > GAMEVALUE
  end

  sum
end

def show_table(cards1, cards2, is_visible=0)
  system 'clear'
  puts ""
  puts "=> DEALER CARDS: "
  display(cards1, is_visible)
  puts ""
  puts "  => Total: #{total(cards1, is_visible)}"
  puts "---------------"
  puts "=> PLAYER CARDS: "
  display(cards2)
  puts ""
  puts "  => Total: #{total(cards2)}"
  puts ""
end

def busted?(cards)
  total(cards) > GAMEVALUE
end

def determine_winner(total_player, total_dealer)
  case
  when total_player > total_dealer
    "Player has won"
  when total_player == total_dealer
    "It is a tie"
  else
    "Dealer has won"
  end
end


def hit_or_stay?
  puts "Do you want to (h)it or (s)tay?"
  answer = gets.chomp.downcase
end
  
# main game loop
loop do
  play_deck.clear
  player_cards.clear
  dealer_cards.clear
  play_deck = initialize_deck

  2.times do
    deal(player_cards, play_deck)
    deal(dealer_cards, play_deck)
  end

  show_table(dealer_cards, player_cards)

  answer = ''
  puts "Player turn: "
  loop do
    answer = hit_or_stay?

    case answer
    when 'h'
      deal(player_cards, play_deck)
      show_table(dealer_cards, player_cards)
    when 's'
      break
    else
      puts "Oeps... please select 'h' or 's' to game on"
      next
    end

    if busted?(player_cards)
      break
    end
  end

  if answer == 's'
    show_table(dealer_cards, player_cards, ISVISIBLE)
  end

  puts "Dealer turn"
  loop do
    case
    when total(dealer_cards) <= 16
      deal(dealer_cards, play_deck)
    when total(dealer_cards) == GAMEVALUE
      break
    else
      break
    end
    show_table(dealer_cards, player_cards, ISVISIBLE)
    break if busted?(dealer_cards)
    binding.pry
  end
binding.pry
  if busted?(dealer_cards)
    puts " dealer busted"
  elsif busted?(player_cards)
    puts "You are Busted "
  else
    total1 = total(player_cards)
    total2 = total(dealer_cards)
    puts determine_winner(total1, total2)
  end

  puts 'Play again y/n?'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')

end
puts "Goodbye"
