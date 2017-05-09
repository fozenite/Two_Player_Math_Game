module MathGame
  class State
  attr_reader :activePlayer
  @@PlayerStack = ['Player1','Player2']

    def initialize
      @activePlayer = @@PlayerStack[0]
    end

    def switchPlayer
      if @activePlayer == @@PlayerStack[0]
         @activePlayer = @@PlayerStack[1]
      else
         @activePlayer = @@PlayerStack[0]
      end
    end
  end
end