# spec/guess_spec.rb
require 'spec_helper'

module Mastermind
  describe Guess do
    describe '#initialize' do
      it 'initializes with a number of characters representing colors' do
        expect { Guess.new('RGBYW') }.to_not raise_error
      end
    end
  end
end
