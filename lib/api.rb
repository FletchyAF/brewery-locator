class Api

    @@url_by_city = "https://api.openbrewerydb.org/breweries?by_state="
    @@url_by_state = "https://api.openbrewerydb.org/breweries?by_city="
    @@url_by_zip = "https://api.openbrewerydb.org/breweries?by_postal="


    def get_breweries_by_state
        response = HTTParty.get(@@url_by_city)
    end

    def get_breweries_by_city
        response = HTTParty.get(@@url_by_state)
    end

    def get_breweries_by_zip
        response = HTTParty.get(@@url_by_zip)
    end

end