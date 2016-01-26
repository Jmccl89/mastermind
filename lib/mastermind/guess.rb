# lib/mastermind/guess.rb
module Mastermind
  class Guess
    attr_accessor :guess
    def initialize(guess)
      @guess = []
      guess.split(//).each do |color|
        @guess.push Peg.new(color)
      end
    end
  end
end
