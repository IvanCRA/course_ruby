# frozen_string_literal: true

require_relative 'func'
include Func
require 'rspec'

RSpec.describe 'Nirvana - something in the way' do
  context '' do
    it 'yeah' do
      arrF = []
      arrG = []
      File.open('F.txt') do |file|
        arrF = file.readlines
      end
      File.open('G.txt') do |file|
        arrG = file.readlines
      end
      puts '__'
      arrG = arrG.reverse

      arrG = arrG.each_index do |i|
        arrG[i] = arrG[i].chomp.reverse
      end

      arrF.each_index do |i|
        arrF[i] = arrF[i].chomp
      end
      expect(arrF.to_set).to eq arrG.to_set
    end
  end
end
