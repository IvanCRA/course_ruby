class Calculation < ApplicationRecord
  before_create :calculate
  ############ Валидация #####################
  validates :source_numbers, presence: true, uniqueness: true 
  ############################################
  def calculate
    #Математика из 8-ой лабы

    source_arr = source_numbers.split(/\D/).reject { |x| x == '' }
    n = source_arr.length
    source_arr = source_arr.slice!(0..n).map(&:to_i)
    final_arr = []
    source_arr.each_index do |index|
      final_arr.push([])
      source_arr[index..n].each do |x|
        break unless perfect?(x)
  
        final_arr[index].push(x)
      end
    end
    final_arr.reverse[0...final_arr.length - 1].each_with_index do |elem, index|
    if elem.reverse == final_arr.reverse[index + 1].reverse[0...elem.length]
      final_arr[final_arr.length - index - 1] = []
      end
    end
    final_arr.reject! { |x| x == [] }
    @arr = final_arr
    @max_arr = final_arr.max_by(&:length)
    @quantity = final_arr.length
    unless @arr.any?
      @arr = [[0,0],[0,0],[0,0]]
    end
   self.results = @arr
  end
  #Модифицировать модель таким образом, чтобы добавление записей с одинаковыми параметрами было невозможно.
  #https://guides.rubyonrails.org/active_record_validations.html
  end

  private
  def divisor_by_factorization(number)
    return [1] if number == 1
    primes, powers = Prime.prime_division(number).transpose
    exponents = powers.map { |i| (0..i).to_a }
    divisors = exponents.shift.product(*exponents).map do |powers|
      primes.zip(powers).map{ |prime, power| prime**power}.inject(:*)
    end
    divisors.sort
  end

  def perfect?(number)
    return false if divisor_by_factorization(number).length == 1
    divisor_by_factorization(number)[0...-1].inject(0) do |sum, x|
      x + sum
      end == number
    end
