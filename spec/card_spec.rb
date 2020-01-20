class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  # It will run before each example in this example group
  before do 
    @card = Card.new("Ace", "Spades")
  end

  # helper method
  def card
    Card.new("Ace", "Spades")
  end

  it "has a rank" do     
    expect(card.rank).to eq("Ace")    
  end

  it "has a suit" do     
    expect(card.suit).to eq("Spades")
  end
end
