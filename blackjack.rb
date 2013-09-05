# Blackjack

def calculate_total(cards)
  score = cards.map{ |num| num[1] }

  total = 0
  score.each do |value|
    if value == "Ace"
      total += 11
    elsif value.to_i == 0 # Jack, Queen, King
      total += 10
    else
      total += value.to_i
    end
  end

# Correct for Aces
  score.select{|ace| ace == "Ace"}.count.times do
    total -= 10 if total > 21
  end

  total
end

# Begin Game

puts "Welcome to Blackjack"

suits = ['♥', '♦', '♠', '♣']
cards = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace']

deck = suits.product(cards)
deck.shuffle!

# Deal Cards

player_cards = []
dealer_cards = []

player_cards << deck.pop
dealer_cards << deck.pop
player_cards << deck.pop
dealer_cards << deck.pop

dealer_total = calculate_total(dealer_cards)
player_total = calculate_total(player_cards)

# Show cards

puts "The Dealer has: #{dealer_cards[0]} and #{dealer_cards[1]}, for a total of: #{dealer_total}"
puts
puts "You have: #{player_cards[0]} and #{player_cards[1]}, for a total of: #{player_total}"
puts
puts

# Player turn

if player_total == 21
  puts "BLACK JACK! Congratulations, you win!"
  exit
end

while player_total < 21
  puts "What would you like to do? 1) Hit Me!  2) Stay"
  hit_or_stay = gets.chomp

  if !['1', '2'].include?(hit_or_stay)
    puts "Please enter 1 or 2"
    next
  end

  if hit_or_stay == "2"
    puts "Very well."
    break
  end

# Hit Me!

new_card = deck.pop
puts "Dealing card to player: #{new_card}"
player_cards << new_card
player_total = calculate_total(player_cards)
puts "Your total is now: #{player_total}"

  if player_total == 21
    puts "BLACK JACK! Congratulations, you win!"
    exit
  elsif player_total > 21
    puts "You busted!"
    puts "Sorry, game over."
    exit
  end

end

# Dealer turn

if dealer_total == 21
  puts "Dealer BLACK JACK! You lose."
  exit
end

while dealer_total < 17
  # Hit
  new_card = deck.pop
  puts "Dealer takes a card: #{new_card}"
  dealer_cards << new_card
  dealer_total = calculate_total(dealer_cards)
  puts "Dealer now has #{dealer_total}"

  if dealer_total == 21
    puts "Dealer BLACK JACK! You lose."
    exit
  elsif dealer_total > 21
    puts "Dealer busted!"
    puts "Congratulations, you win!"
    exit
  end
end

# Compare hands

puts "Dealer's cards: "
dealer_cards.each do |card|
  puts "=> #{card}"
end

puts "Your cards: "
player_cards.each do |card|
  puts "=> #{card}"
end

puts ""

if dealer_total > player_total
  puts "Dealer wins!"
elsif dealer_total < player_total
  puts "You win! Congratulations"
else
  puts "It's a tie!"
end

puts "Thanks for playing!"
 
  