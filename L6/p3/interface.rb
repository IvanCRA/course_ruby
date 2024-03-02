# frozen_string_literal: true

require_relative 'minmax'

def enter_res
  puts 'Введите значение A: '
  a = gets.to_f
  puts 'Введите значение B: '
  b = gets.to_f
  inter1 = (0..2)
  inter2 = (-1..1)
  res = b - a

  puts Minmax.calculate_m(res, inter1) { |x| (x - 1) / (x + 2) }
  puts Minmax.calculate_m(res, inter1, ->(x) { (x - 1) / (x + 2) })

  puts Minmax.calculate_m(res, inter2) { |x| Math.sin((x / 2) - 1) }
  puts Minmax.calculate_m(res, inter2, ->(x) { Math.sin((x / 2) - 1) })
end

enter_res if __FILE__ == $PROGRAM_NAME
