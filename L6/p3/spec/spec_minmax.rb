# frozen_string_literal: true

require_relative '../minmax'
require 'rspec'
require 'faker'

RSpec.describe Minmax do
  include Math
  describe '#check' do
    let(:res) { Faker::Number.decimal }
    let(:inter1) { (0..2) }
    let(:inter2) { (-1..1) }
    lambda1 = ->(x) { (x - 1) / (x + 2) }
    lambda2 = ->(x) { Math.sin((x / 2) - 1) }

    context 'checking processing of blocks and lambdas' do
      it 'both given' do
        expect(
          described_class.calculate_m(res, inter1, lambda1) { |x| (x - 1) / (x + 2) }
        ).to eq(nil)
        expect(
          described_class.calculate_m(res, inter2, lambda2) { |x| Math.sin((x / 2) - 1) }
        ).to eq(nil)
      end

      it 'given lambda' do
        expect(
          described_class.calculate_m(res, inter1, lambda1)
        ).to be_an(Numeric)
        expect(
          described_class.calculate_m(res, inter2, lambda2)
        ).to be_an(Numeric)
      end

      it 'both of methods are equal' do
        expect(
          described_class.calculate_m(res, inter1, lambda1)
        ).to eq(
          described_class.calculate_m(res, inter1) { |x| (x - 1) / (x + 2) }
        )

        expect(
          described_class.calculate_m(res, inter2, lambda2)
        ).to eq(
          described_class.calculate_m(res, inter2) { |x| Math.sin((x / 2) - 1) }
        )
      end
    end
  end
end
