require 'rails_helper'

RSpec.describe "Calculations", type: :request do
  #Реализовать функциональный тест, проверяющий, что результаты вычислений различны при различных входных параметрах.
  describe "GET /calculations" do
    it "works! (now write some real specs)" do
      get calculations_path
      expect(response).to have_http_status(200)
    end
  end
  describe "POST /calculations" do
    it "works! (now write some real specs)" do
      post calculations_path, params: {calculation: {source_numbers: '6 28 14 5 28 28 6 2 6 6'}}
      post calculations_path, params: {calculation: {source_numbers: '6 56 14 5 56 56 6 8 6 6'}}
      expect(response).to be_redirect
      expect(Calculation.count).to eq(2)
    end
  end
  describe "DELETE /calculations/id" do
    it "Delete" do 
      calculation = Calculation.create(source_numbers: '6 28 14 5 28 28 6 2 6 6')
      delete "/calculations/#{calculation.id}"
      expect(Calculation.count).to eq(0)
      expect(response).to be_redirect
    end
  end
end
