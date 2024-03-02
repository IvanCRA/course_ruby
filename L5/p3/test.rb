# frozen_string_literal: true

include Math
require_relative 'calc'
require 'rspec'
require 'faker'
include Calculate

RSpec.describe Calculate do
  it "check" do
    arr1 = "привет я свинка пеппа".dup
    arr2 = "это мой младший брат джордж".dup
    arr3 = "а это мама свинка".dup
    arr4 = "а это папа свин".dup
    expect(calc(arr1)).to eq("рсйгжу а тгйолб ржррбб")
    expect(calc(arr2)).to eq("юуп нпк нмбещйк всбу езпсезб")
    expect(calc(arr3)).to eq("б юуп нбнб тгйолбб")
    expect(calc(arr4)).to eq("б юуп рбрб тгйоб")
  end
end
