# frozen_string_literal: true

require_relative 'calc'
include Calc

input_arr = gets
strArr = input_arr.split.map(&:to_i)
result_arr = calculate(strArr)
result_arr.each do |a|
  print a
  print(' ')
end
puts
