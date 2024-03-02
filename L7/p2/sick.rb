# frozen_string_literal: true

class SickPointers
  attr_accessor :surname, :age

  def initialize(surname, age)
    @surname = surname
    @age = age
  end

  def print_sick
    puts("Фамилия: #{@surname} и возраст: #{@age}")
  end
end
