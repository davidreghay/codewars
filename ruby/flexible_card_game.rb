class Card
  
  include Comparable
  
  attr_accessor :suit
  attr_accessor :rank

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

  def face_card?
    rank > 10
  end

  def to_s
    case rank
    when 11
      "Jack of #{suit.capitalize}"
    when 12
      "Queen of #{suit.capitalize}"
    when 13
      "King of #{suit.capitalize}"
    when 1
      "Ace of #{suit.capitalize}"
    else
      "#{rank} of #{suit.capitalize}"
    end
  end
  
  def <=> (other)
    self.rank <=> other.rank
  end

end


class Deck

  attr_accessor :cards
  
  def [](index)
    @cards[index]
  end
 
 def initialize
    @cards = []
    for suit in ["hearts", "clubs", "spades", "diamonds"] do
      for rank in 1..13 do
        @cards << Card.new(suit, rank)
      end
    end
    @cards
  end
  
  def shuffle
  	@cards.shuffle!
  end

  def draw(n = 1)
    @cards.pop(n)
  end

  def count
    @cards.length
  end

end

def swap(a, b)
  temp = a
  a = b
  b = temp
end
