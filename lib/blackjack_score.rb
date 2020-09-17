# blackjack_score.rb

VALID_CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']


def blackjack_score(hand)
  score = 0
  hand = hand.map {|x| x == "Queen" || x == "Jack" || x == "King" ? 10 : x}

  if hand.include?("Ace")
    hand.reject! { |i| i == "Ace" }
    if hand.sum > 11
      hand << 1
    elsif hand.sum <= 11
      hand << 10
    end
  end
  print hand


  score = hand.sum

  print score

  return score


  # score = hand.sum
  # print score

  # if score + "Ace" > 21
  #   "Ace" = 1
  #   score + "Ace"
  # else
  #   "Ace" = 10
  # end


end
hand = ["Ace", "King" ]
blackjack_score(hand)