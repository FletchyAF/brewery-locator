class Api

    def self.get_breweries_by_state(state)
        @@url_by_state = "https://api.openbrewerydb.org/breweries?by_state=#{state}"
        response = HTTParty.get(@@url_by_state)
        state_brewery_hash = { brewery_info => {name: response["name"], street: response["street"], website_url: response["website_url"]}}
        FindBrewery.new(state_brewery_hash)
    end

    def self.get_breweries_by_city(city)
        @@url_by_city = "https://api.openbrewerydb.org/breweries?by_city=#{city}"
        response = HTTParty.get(@@url_by_city)
        city_brewery_hash = { brewery_info => {name: response["name"], street: response["street"], website_url: response["website_url"]}}
        FindBrewery.new(city_brewery_hash)
    end

    def self.get_breweries_by_zip(zip)
        @@url_by_zip = "https://api.openbrewerydb.org/breweries?by_postal=#{zip}"
        response = HTTParty.get(@@url_by_zip)
        zip_brewery_hash = { brewery_info => {name: response["name"], street: response["street"], website_url: response["website_url"]}}
        FindBrewery.new(zip_brewery_hash)
    end

end