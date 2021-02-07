class FindBrewery
    attr_accessor :name, :street, :website_url

    def initialize(hash)
        hash.each do |key, value|
            self.send("#{key}=", value) if self.respond_to?("#{key}=")
        end
        binding.pry
    end
    
end