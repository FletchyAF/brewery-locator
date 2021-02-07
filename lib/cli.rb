class Cli

    def welcome_user
        puts "Welcome to the brewery locator app! You're one step closer to puttin' a brew in you!"
        self.prompt_input_option
    end

    def prompt_input_option
        puts "Please type the number associated with your desired search filter below:"
        puts "[1]: State, [2]: City, [3]: Zip Code"
        option_input = gets.strip
            if option_input == "1" || option_input == "2" || option_input == "3"
                self.prompt_input(option_input)
            else
                puts "Sorry, that isn't a valid number input."
                self.prompt_input_option
            end
    end

    def prompt_input(option_input)
        if option_input == "1"
            puts "Please type your State below:"
            state = gets.strip
            # needs error handling for invalid State
            found_breweries = Api.get_breweries_by_state(state)
        elsif option_input == "2"
            puts "Please type your City below:"
            city = gets.strip
            # needs error handling for invalid city
            found_breweries = Api.get_breweries_by_city(city)
        else
            puts "Please type your Zip Code below:"
            zip = gets.strip
            # needs error handling for invalid zip
            found_breweries = Api.get_breweries_by_zip(zip)
        end
        self.provide_user_output(found_breweries)
    end

    def provide_user_output(breweries)
        puts "The listed breweries based on your search filter are:"
        
    end

end