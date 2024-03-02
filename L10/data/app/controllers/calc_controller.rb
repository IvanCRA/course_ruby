class CalcController < ApplicationController

  def view
    n = params[:number].to_i
    source_arr = params[:source_numbers].split(/\D/).reject { |x| x == '' }.slice!(0..n).map(&:to_i)
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
    @result = {
      array: @arr,
      max_array: @max_arr,
      quan: @quantity,
      url: '127.0.0.1:3000'
    }
    respond_to do |format|
    #  format.xml { render xml: {array: @arr, max_array: @max_arr, quantity: @quantity} }
    #   format.xslt
    format.html
    # format.xml { render :layout => false }
    #format.xml { render xml: {array: @arr, max_array: @max_arr, quantity: @quantity, url: '127.0.0.1:3000'} }
    format.xml { render xml: {array: @result } }
    end
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
end
#проверка типа возвращаемого значения