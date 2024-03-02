# frozen_string_literal: true

module Calc
  def calculate(arr)
    arr.each_index do |i|
      arr.insert(i + 1, arr[i]**2) if (arr[i]).negative?
    end
  end
end
