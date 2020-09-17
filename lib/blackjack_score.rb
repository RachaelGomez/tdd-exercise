# blackjack_score.rb

VALID_CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']


def blackjack_score(hand)

  if hand.length > 5
    raise ArgumentError.new("A hand can't have more than 5 cards!")
  end

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

  score = hand.sum

  if score > 21
    raise ArgumentError.new("Uh oh! You exceeded 21! You lose!")
  end


  return score



end
hand = ["Ace", "Queen", "King"]
blackjack_score(hand)