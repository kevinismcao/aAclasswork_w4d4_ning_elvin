class Game
    attr_reader :size 
    attr_accessor :pile_1, :pile_2, :pile_3
    def initialize(num)
        @size = num 
        @pile_1 = num.downto(1).to_a
        @pile_2 = []
        @pile_3 = []
    end

    def move(start_pile, end_pile)
        if  end_pile.empty? || start_pile.last < end_pile.last
            moving_disc = start_pile.pop
            end_pile << moving_disc
            return [moving_disc]
        else 
            raise "Invalid Move"
        end
    end

    def won?
        pile_1.empty? && pile_2.empty? && pile_3 == size.downto(1).to_a
    end

    
end