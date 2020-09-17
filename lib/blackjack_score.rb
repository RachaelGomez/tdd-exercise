# blackjack_score.rb

VALID_CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']


def blackjack_score(hand)
  hand.each do |card|
    if !VALID_CARDS.any?(card)
      raise ArgumentError.new("Uh oh! #{card} is not a valid card")
    end
  end
  score = 0
  hand = hand.map {|x| x == "Queen" || x == "Jack" || x == "King" ? 10 : x}

  if hand.include?("Ace")
    hand.reject! { |i| i == "Ace" }
    if hand.sum > 10
      hand << 1
    elsif hand.sum <= 10
      hand << 11
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
hand = ["Ace", "Queen", "King"]
blackjack_score(hand)