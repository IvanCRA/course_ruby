# frozen_string_literal: true

include Math
require_relative 'calc'
require 'rspec'
require 'faker'
include Calculated

RSpec.describe Calculated do
  it 'check' do
    expect(calculate(2, 2)).to eq(10.1458573203551)
    expect(calculate(1, 1)).to eq(3.47769018569991)
    expect(calculate(5, 3)).to eq(91.28995676165742)
  end
end
