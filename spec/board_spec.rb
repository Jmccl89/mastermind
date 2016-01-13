# spec/board_spec.rb
require 'spec_helper'

module Mastermind
  describe Board do
    describe '#initialize' do
      it 'initializes the board with a number of guesses and a solution' do
        expect{Board.new(Solution.new('RWGBY'), 10)}.to_not raise_error
      end

      it 'defaults guesses to 8 if the number of guesses is less than or equal to zero' do
        board = Board.new(Solution.new('RWGBY'), 0)
        expect(board.grid.length).to eq 8
      end

      it 'does not initialize if the solution is invalid' do

      end
    end

    describe '#grid' do
      it 'returns the board grid' do

      end
    end

    describe '#get_peg' do
      it 'returns the peg value at coordinates (x, y)' do

      end
    end

    describe '#set_peg' do
      it 'sets the value of the peg at coordinates (x, y)' do

      end
    end
  end
end
