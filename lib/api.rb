class Api

    @@url_by_city = "https://api.openbrewerydb.org/breweries?by_state="
    @@url_by_state = "https://api.openbrewerydb.org/breweries?by_city="
    @@url_by_zip = "https://api.openbrewerydb.org/breweries?by_postal="


    def self.get_breweries_by_state
        response = HTTParty.get(@@url_by_city)
        state_brewery_hash = {name: response["name"], street: response["street"], website_url: response["website_url"]}
    end

    def self.get_breweries_by_city
        response = HTTParty.get(@@url_by_state)
        city_brewery_hash = 
    end

    def self.get_breweries_by_zip
        response = HTTParty.get(@@url_by_zip)
        zip_brewery_hash = 

    end

end