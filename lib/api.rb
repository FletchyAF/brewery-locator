class Api

    def self.get_breweries_by_state(state)
        @@url_by_state = "https://api.openbrewerydb.org/breweries?by_state=#{state}"
        response = HTTParty.get(@@url_by_state)
        response.each {|brewery| Brewery.new(brewery)}
    end

    def self.get_breweries_by_city(city)
        @@url_by_city = "https://api.openbrewerydb.org/breweries?by_city=#{city}"
        response = HTTParty.get(@@url_by_city)
        response.each {|brewery| Brewery.new(brewery)}
    end

    def self.get_breweries_by_zip(zip)
        @@url_by_zip = "https://api.openbrewerydb.org/breweries?by_postal=#{zip}"
        response = HTTParty.get(@@url_by_zip)
        response.each {|brewery| Brewery.new(brewery)}
    end
end