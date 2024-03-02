# frozen_string_literal: true

include Math
require_relative 'calc'
include Calculated

# начало программы
puts('vvedite x and z')
x = gets
z = gets
puts(calculate(x.to_i, z.to_i))
