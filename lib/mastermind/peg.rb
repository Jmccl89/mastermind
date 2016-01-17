# lib/mastermind/peg.rb
module Mastermind
  class Peg
    attr_accessor :color
    def initialize(color)
      @color = color.downcase
    end
  end
end
