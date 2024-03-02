# frozen_string_literal: true

xml.instruct! :xml, version: '1.0'
xml.rss version: '2.0' do
      xml.array @result[:array]
      xml.array @result[:max_array]
      xml.array @result[:quan]
      xml.link @result[:url]
      xml.guid @result[:url]
end