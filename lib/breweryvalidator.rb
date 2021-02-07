class BreweryValidator

    def validate(breweries)
        breweries.each do |brewery|
            if brewery["name"] == nil || brewery["name"] == ""
                brewery["name"] = "No name found"
            end
            if brewery["street"] == nil || brewery["street"] == ""
                brewery["street"] = "No address found"
            end
            if brewery["website_url"] == nil || brewery["website_url"] == ""
                brewery["website_url"] = "No website url"
            end
        end
    end 

end