def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(cards)
  puts "Your cards add up to #{cards}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.strip.chomp
end

def end_game(cards)
  puts "Sorry, you hit #{cards}. Thanks for playing!"

end

def initial_round
  card1 = deal_card
  card2 = deal_card
  cards = card1 + card2
  display_card_total(cards)
  return cards
end

def hit?(cards)
  prompt_user
  input = get_user_input
  if input=="h"
    cards += deal_card
  elsif input=="s"
    return cards
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
  get_user_input
end

def runner
  welcome
  cards = initial_round
  until cards > 21
    cards = hit?(cards)
    display_card_total(cards)
  end
end_game(cards)
end
