module MathGame
  class Questions
  attr_accessor :answer, :number1, :number2
    def initialize
      @number1 = 0
      @number2 = 0
      @answer = 0
    end

    def genQuestion
      @number1 = 1 + rand(20)
      @number2 = 1 + rand(20)
      @answer = @number1 + @number2
    end

  end
end
