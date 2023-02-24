class Deck 
    attr_reader
    :Suit = [heart, spade, club, diamond]
    :Num = (1..13).to_a

    def initialize
        @cards = []
        Cards::Suit.each do |suit|
            Cards::Num.each do |num|
                @cards << Card.new(num, suit)
            end
        end
    end

    def shuffle_cards
        @cards.shuffle!
    end


end