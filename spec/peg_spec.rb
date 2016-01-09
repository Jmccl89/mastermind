# spec/peg_spec.rb
require 'spec_helper'

module Mastermind
  describe Peg do
    describe '#initialize' do
      it 'can be initialized with a color' do
        peg = Peg.new('R')
        expect(peg.color).to eq 'r'
      end
      
      it 'can not be initialized without a color' do
        expect{Peg.new()}.to raise_error(ArgumentError)
      end
    end
  end
end
