class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end 
end 

class Deck

  def initialize
    @deck = []
    suits = ["Spades", "Diamonds", "Hearts", "Clubs"]
    ranks = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    
    suits.each do |suit|
      ranks.each do |rank|
        card = Card.new(rank, suit)
        @deck << card
      end
    end
  end

  def output_deck
    @deck.each do |card|
      card.output_card
    end
  end

  def shuffle 
    @deck.shuffle!
  end

  def deal
      if @deck.empty?
       nil
      else
        @deck.shift
     end
   end
end



deck = Deck.new
deck.shuffle
nextcard = "y"

while nextcard == "y"
    card = deck.deal  
    card.output_card
    puts "Would you like a card from the deck? y/n: "
    nextcard = gets.chomp
  
end 