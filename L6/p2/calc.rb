# frozen_string_literal: true

# calc
# rubocop:disable Metrics/MethodLength
# rubocop:disable Metrics/AbcSize
module Calculeted
  include Math
  def calc(num)
    e1 = 0.001
    e2 = 0.0001
    restoch = 0.3862943611199
    xa = 1
    xb = 2
    step = (xb.to_f - xa.to_f) / num.to_f
    x = xa.to_f
    res = 0
    arrRes = (0..num - 1).collect { |i| log(step_x(x, i, step) + (step / 2)) }
    res = arrRes.sum * step
    puts res
    if (res - restoch) <= e1
      print "Меньше 0.001\n"
    else
      print "Больше 0.001\n"
    end
    if (res - restoch) <= e2
      print "Меньше 0.0001\n"
    else
      print "Больше 0.0001\n"
    end
    res
  end

  def step_x(x, i, step)
    result = x + (step * i)
  end
end
# rubocop:enable Metrics/MethodLength
# rubocop:enable Metrics/AbcSize
