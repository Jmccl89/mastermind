# spec/solution_spec.rb
require 'spec_helper'

module Mastermind
  describe Solution do
    describe '#initialize' do
      it 'initializes with a number of characters representing colors' do
        expect { Solution.new('RGBYW') }.to_not raise_error
      end
    end
  end
end
