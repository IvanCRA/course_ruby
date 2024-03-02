# frozen_string_literal: true

require_relative 'calc'
require 'rspec'
require 'faker'
include Calculeted

# test
RSpec.describe Calculeted do
  include Math

  it 'check' do
    expect(calc(5)).to eq(0.3871243379229092)
    expect(calc(3)).to eq(0.388583863835246)
    expect(calc(15)).to eq(0.38638691176804296)
    expect(calc(60)).to eq(0.38630014799284357)
  end
end
