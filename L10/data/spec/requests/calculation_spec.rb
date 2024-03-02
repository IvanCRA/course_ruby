require 'rails_helper'

RSpec.describe "Calculations", type: :request do
  describe "get different results" do
    it "works! (now write some real specs)" do
      get 'http://127.0.0.1:3000/calc/view.xml?number=10&source_numbers=6+28+214+28+28+28+43+35+1+6&commit=%D0%A0%D0%B5%D1%88%D0%B8%D1%82%D1%8C'
      r_f = @response.body

      get 'http://127.0.0.1:3000/calc/view.xml?number=10&source_numbers=6+10+214+10+10+10+43+35+1+6&commit=%D0%A0%D0%B5%D1%88%D0%B8%D1%82%D1%8C'
      r_s = @response.body
      expect(r_f).not_to eq(r_s)
    end
  end
end
