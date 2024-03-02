# frozen_string_literal: true

require_relative 'sick'

class SickdisPointers < SickPointers
  attr_accessor :yearLast, :thithYear

  def initialize(surname, age, yearLast, thithYear)
    super(surname, age)
    @yearLast = yearLast
    @thithYear = thithYear
  end

  def print_sickdis
    puts("Фамилия: #{@surname} и возраст: #{@age}, год диспасерицзации: #{@yeardis}")
  end

  def nextDis
    return 'error' unless @thithYear > @yearLast
    return 'Надо пройти дис' if (@thithYear - @yearLast) >= 3

    'Не надо'
  end
end
