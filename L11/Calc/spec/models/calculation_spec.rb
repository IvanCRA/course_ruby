require 'rails_helper'

RSpec.describe Calculation, type: :model do
  #Написать тест на добавление и поиск данных с помощью модели. Проверить выполнение теста.
  describe 'new calculation' do
    subject {Calculation.new(source_numbers:'2 3 4 55')}
    it 'adding' do
      subject.save
      expect(subject).to be_persisted
    end
  end
  describe 'search calculation' do
    it 'search' do 
      calculation = Calculation.create(source_numbers: '1 2 3')
      expect(Calculation.count).to eq 1
      expect(Calculation.where(source_numbers: '1 2 3').first).to eq calculation
    end
  end
  #Реализовать тест модели, проверяющий невозможность повторного добавления одних и тех же результатов вычислений.
  describe 'validation calculation' do
    it 'valid' do 
      calculation = Calculation.create(source_numbers: '1 2 3')
      calculation_2 = Calculation.new(source_numbers: '1 2 3')
      expect(calculation_2).not_to be_valid
    end
  end
end
