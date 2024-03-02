class CalcController < ApplicationController
  #def view
   # response = HTTParty.get('http://127.0.0.1:3000/calc/view.xml?number=10&source_numbers=6+28+214+28+28+28+43+35+1+6&commit=%D0%A0%D0%B5%D1%88%D0%B8%D1%82%D1%8C')
    #xml = Nokogiri::XML(response.body)
    
 # end
  def format_xslt
  send_file("#{Rails.root}/public/format.xslt", type: 'text/xslt')
  end

  def xml
  inject_xslt = CalcHelper.get_inject params
  client_xslt = CalcHelper.get_client params
  rss_url = CalcHelper.get_rss params

    respond_to do |format|
      format.xml do
        URI.open(rss_url) do |rss|
          xml = Nokogiri::XML(rss)
          xml_code = ':('

          if client_xslt
            pi = Nokogiri::XML::ProcessingInstruction.new(xml, 'xml-stylesheet', 'type="text/xsl" href="/public/format.xslt"')
            xml.root.add_previous_sibling pi
          end
          xml_code = xml

          render inline: xml_code
        end
      end
    end
  end

  def view
  server_xslt = CalcHelper.get_server params
  rss_url = CalcHelper.get_rss params

  html_code = ':('

  respond_to do |format|
    format.html do
      URI.open(rss_url) do |rss|
        xml = Nokogiri::XML(rss)

        if server_xslt
          xslt = Nokogiri::XSLT(File.read('public/format.xslt'))
          html_code = xslt.transform(xml).to_s
        else
          redirect_to action: 'xml', xslt_type: params[:xslt_type], xslt: params[:xslt], url: params[:url]
          next
        end

        render inline: html_code
      end
    end
  end
  end
end

