# frozen_string_literal: true

include Math
require_relative 'calc'
require 'rspec'
require 'faker'
include Calc

RSpec.describe Calc do
  it 'check' do
    arr1 = [1, 3, -3, 6, 6, -5]
    arr2 = [-5, 5, 67, -1, 8, -7]
    arr3 = [0, 7, 2, 1]
    expect(calculate(arr1)).to eq([1, 3, -3, 9, 6, 6, -5, 25])
    expect(calculate(arr2)).to eq([-5, 25, 5, 67, -1, 1, 8, -7, 49])
    expect(calculate(arr3)).to eq([0, 7, 2, 1])
  end
end
