# frozen_string_literal: true

include Math

module Calculated
  def calculate(x, z)
    ((x**2) + (2 * E**x)) * cos(6 * (z / x) - 5)
  end
end
