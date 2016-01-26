# spec/board_spec.rb
require 'spec_helper'

module Mastermind
  describe Board do
    describe '#initialize' do
      it 'initializes the board with a number of guesses and a solution' do
        expect { Board.new(Guess.new('RWGBY'), 10) }.to_not raise_error
      end

      it 'defaults guesses to 8 if the number of guesses is less than or equal to zero' do
        board = Board.new(Guess.new('RWGBY'), 0)
        expect(board.guesses).to eq 8
      end
    end

    describe '#grid' do
      it 'returns the board grid' do
      end
    end

    describe '#get_peg' do
      it 'returns the peg value at coordinates (x, y)' do
        board = Board.new(Guess.new('RGBYW'), 10)
        expect(board.get_peg(0, 0).color).to eq 'r'
      end
    end

    describe '#set_peg' do
      it 'sets the value of the peg at coordinates (x, y)' do
        board = Board.new(Guess.new('RWGBY'), 10)
        board.add_guess(Guess.new('TTTTT'))
        board.set_peg(1, 0, 'Y')
        expect(board.get_peg(1, 0)).to eq 'Y'
      end
    end
  end
end
