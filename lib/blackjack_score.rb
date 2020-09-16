# blackjack_score.rb

VALID_CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']

def blackjack_score(hand)
  score = 0
  
  # hand.each do |i|
  #   if hand[i] == "Jack" || hand[i] == "Queen" || hand[i] == "King" || hand[i] == "Ace"
  #     hand[i].to_i = 10
  #   end
  # end

  score = hand.sum

  # if score + "Ace" > 21
  #   "Ace" = 1
  #   score + "Ace"
  # else
  #   "Ace" = 10
  # end


end
