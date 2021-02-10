class Cli

    def welcome_user
        puts "Welcome to the brewery locator app! You're one step closer to puttin' a brew in you!"
        self.prompt_input_option
    end

    def prompt_input_option
        puts "Please type the number associated with your desired search filter below:"
        puts "[1]: State, [2]: City, [3]: Zip Code, [4]: Exit Program"
        option_input = gets.strip
            if option_input == "1" || option_input == "2" || option_input == "3" || option_input == "4"
                self.prompt_input(option_input)
            else
                puts "Sorry, that isn't a valid number input."
                self.prompt_input_option
            end
    end

    def prompt_input(option_input)
        if option_input == "1"
            puts "Please type your State below:"
            state = gets
            Api.get_breweries_by_state(state)
        elsif option_input == "2"
            puts "Please type your City below:"
            city = gets
            Api.get_breweries_by_city(city)
        elsif option_input == "3"
            puts "Please type your Zip Code below:"
            zip = gets
            Api.get_breweries_by_zip(zip)
        else
            puts "Have a good day."
            return
        end
        self.provide_user_output
        self.prompt_input_option
    end

     def provide_user_output
        puts Brewery.list_all_breweries
     end
end