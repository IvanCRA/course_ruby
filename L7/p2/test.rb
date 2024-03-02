# frozen_string_literal: true

require_relative 'sick'
require_relative 'sickdis'
require 'rspec'

RSpec.describe 'SickdisPointers' do
  context 'sickdis' do
    let!(:sickdis) { SickdisPointers.new('Больной на голову', '5446', 2005, 2006) }

    it 'creates a SickdisPointers object' do
      expect(sickdis).to be_instance_of SickdisPointers
    end

    it 'year of medical examination' do
      expect(sickdis.nextDis).to eq('Не надо')
    end
  end

  it 'Should check superclass' do
    expect(SickdisPointers.superclass).to eq SickPointers
  end

  context 'sick' do
    let!(:sick) { SickPointers.new('Больной на голову', '5446') }
    it 'creates a Sick Pointers object' do
      expect(sick).to be_instance_of SickPointers
    end
  end
end
