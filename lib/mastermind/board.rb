module Mastermind
  class Board
    attr_reader :guesses
    def initialize(solution, guesses = 8)
      @guesses = guesses <= 0 ? 8 : guesses
      @board = [solution]
    end

    def get_peg(x, y)
      @board[x].guess[y]
    end

    def set_peg(x, y, value)
      @board[x].guess[y] = value
    end

    def add_guess(guess)
      @board.push(guess)
    end
  end
end
