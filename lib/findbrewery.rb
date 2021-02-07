class FindBrewery
    attr_accessor :name, :street, :website_url

    def initialize(hash)
        hash.each do |key, value|
            self.send("#{key}=", value)
        end
        binding.pry
    end
    
end