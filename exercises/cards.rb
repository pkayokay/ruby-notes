class Card
  
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "You have the #{self.rank} of #{self.suit}!"
  end

end

class Deck

  def initialize
    @cards = []
    @types = ["Hearts","Diamonds","Clubs","Spades"]
    @values = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
  end

  def deck_of_cards
    @values.each do |value|
      @types.each do |type|
        @cards.push(Card.new(value, type))
      end
    end
  end

  def shuffle
    @cards.shuffle!
  end

  def output
    @cards.each do |card|
      card.output_card
    end
  end

  def deal
    @cards = @cards.shift(1)
    output
  end

end

deck = Deck.new
deck.deck_of_cards
deck.shuffle
deck.deal