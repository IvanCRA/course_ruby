module CalcHelper
    def self.get_inject(params)
        params.key?(:xslt) && (params[:xslt] == '1')
      end
    
      def self.get_server(params)
        get_inject(params) && \
          params.key?(:xslt_type) && \
          (params[:xslt_type] == 'server')
      end
    
      def self.get_client(params)
        get_inject(params) && \
          params.key?(:xslt_type) && \
          (params[:xslt_type] == 'client')
      end
    
      def self.get_rss(params)
        params[:url]
      end
    
end
