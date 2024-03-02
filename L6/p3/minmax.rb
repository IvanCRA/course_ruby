# frozen_string_literal: true

class Minmax
  include Enumerable

  def self.calculate_m(b, period, func = nil, step = 0.01)
    return unless ((func.is_a? Proc) ^ block_given?) && (step.is_a? Float) && (b.is_a? Numeric) && (period.is_a? Range)

    b / period.step(step).max { |x| block_given? ? (yield x) : func.call(x) }
  end
end
