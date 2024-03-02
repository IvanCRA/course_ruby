# frozen_string_literal: true

require_relative 'calc'
require 'rspec'
require 'faker'
include Calculeted

RSpec.describe Calculeted do
  include Math

  it 'check' do
    expect(prcalc(5)).to eq(0.3871243379229092)
    expect(prcalc(3)).to eq(0.3885838638352461)
    expect(prcalc(15)).to eq(0.3863869117680429)
    expect(prcalc(60)).to eq(0.38630014799284257)
  end
end
