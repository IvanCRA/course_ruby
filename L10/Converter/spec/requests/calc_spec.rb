require 'rails_helper'

RSpec.describe "Calcs", type: :request do
  describe "GET /index" do

    it "returns http succes" do
      get 'http://127.0.0.1:3001/calc/xml?url=http%3A%2F%2F127.0.0.1%3A3000%2Fcalc%2Fview.xml%3Fnumber%3D10%26source_numbers%3D6%2B28%2B214%2B28%2B28%2B28%2B43%2B35%2B1%2B6%26commit%3D%25D0%25A0%25D0%25B5%25D1%2588%25D0%25B8%25D1%2582%25D1%258C&xslt=1&xslt_type=client'
      expect(response.content_type).to eq("application/xml; charset=utf-8")
    end
    it "xml" do
      get 'http://127.0.0.1:3001/calc/xml?url=http%3A%2F%2F127.0.0.1%3A3000%2Fcalc%2Fview.xml%3Fnumber%3D10%26source_numbers%3D6%2B28%2B214%2B28%2B28%2B28%2B43%2B35%2B1%2B6%26commit%3D%25D0%25A0%25D0%25B5%25D1%2588%25D0%25B8%25D1%2582%25D1%258C&xslt_type=server'
      expect(response.content_type).to eq("application/xml; charset=utf-8")
    end

  end
end
