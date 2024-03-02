# frozen_string_literal: true

require_relative 'calc'
include Math
include Calculeted
# input
puts('Введите количество итераций/шагов: ')
n = gets
prcalc(n.to_i)
