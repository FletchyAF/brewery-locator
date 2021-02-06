class Api
   
      URL = "https://api.openbrewerydb.org/breweries"
    
      def get_breweries
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
      end

end