# frozen_string_literal: true

# integral calculation
# rubocop:disable Metrics/MethodLength
# rubocop:disable Metrics/AbcSize
module Calculeted
  include Math
  def prcalc(num)
    e1 = 0.001
    e2 = 0.0001
    restoch = 0.3862943611199
    xa = 1
    xb = 2
    res = 0
    x = xa.to_f
    step = (xb.to_f - xa.to_f) / num.to_f
    0.upto(num - 1) do
      res += log(x + (step / 2))
      x += step
    end
    res *= step
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
end
# rubocop:enable Metrics/MethodLength
# rubocop:enable Metrics/AbcSize
