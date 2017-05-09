
module MathGame
  class Player
    attr_reader :name, :lives
    def initialize(fromChomp)
    @name = fromChomp
    @lives = 3
    end

    def lifeSnatch
      @lives -= 1
    end
  end
end