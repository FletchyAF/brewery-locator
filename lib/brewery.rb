class Brewery

    attr_accessor :name, :address, :website_url

    @@allbreweries = []

    def initialize(brewery_hash)
        if brewery_hash["name"] != nil && brewery_hash["name"] != ""
            @name = brewery_hash["name"]
        else
            @name = "[Name Unknown]"
        end

        if brewery_hash["street"] != nil && brewery_hash["street"] != ""
            @address = brewery_hash["street"]
        else
            @address = "[Street Unknown]"
        end

        if brewery_hash["city"] != nil && brewery_hash["city"] != ""
            @address += (", " + brewery_hash["city"])
        else
            @address += " [City Unknown]"
        end

        if brewery_hash["website_url"] != nil && brewery_hash["website_url"] != ""
            @website_url = brewery_hash["website_url"]
        else
            @website_url = "[Website URL Unknown]"
        end

        @@allbreweries << self
    end

    def self.all
        return @@allbreweries
    end

    def self.list_all_breweries
        output_string = ""
        if @@allbreweries.length > 0
            @@allbreweries.each {|brewery| output_string += "Name: #{brewery.name} | Address: #{brewery.address} | Website Link: #{brewery.website_url}\n" } 
        else
            output_string = "No Breweries Found"
        end
        return output_string
    end

end