class Round 
    attr_reader :deck, :turns, :correct

    def initialize(deck)
        @deck = deck
        @turns = []
        @correct = 0
    end     
    
    def current_card
        @deck.cards.first
    end 

    def take_turn(guess)
        # takes a string representing the guess
        if guess == current_card.answer
            @correct += 1
        end 
        new_turn = Turn.new(guess, current_card)
        @turns << new_turn
        deck.cards.delete_at(0)
    end 
end 