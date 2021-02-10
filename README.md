# brewery-locator

brewery-locator is a simple ruby application that takes user input and outputs a list of breweries near the
location selected by the user. The user is initially prompted for a filter, the filter being either a State,
a City, a Zip-code, or they can choose the final option to close the program. After selecting a filter the user
is asked to type in the state, city or zip-code of their choosing based off their filter. The program then finds the 
breweries in that area!

## Summary

  - [Set up Instructions](#set-up-instructions)
  - [Deployment](#deployment)
  - [Built With](#built-with)
  - [Contributing](#contributing)
  - [Authors](#authors)
  - [License](#license)
  - [Acknowledgments](#acknowledgments)

## Set up Instructions
Given this is a ruby CLI project, you will need some manner of ubuntu with ruby functionality installed 
in order to properly use and test this application. Click the green code drop down and select SSH, then click on the
clipboard icon to copy the link. In your terminal, type 'git clone ' then paste the link and press enter. You'll then navigate
into the main directory in order to complete installation of the project.

### Installing

Once inside the project folder, type 'bundle install' into your terminal. This will
install the necessary ruby gems in order to make the project run correctly. If any permissions issues
arise, you may be able to get it installed using the 'rvmsudo' command before the 'bundle install'
command. Like so: 'rvmsuod bundle install'

## Testing

With the project fully installed, the program should be run by typing 'ruby bin/run'. The program will then 
prompt the user for a response to the set of filters. Simply type in one of the numbers correlating with a 
filter option and press enter. Based of the filter selected, the next input required will be the typed out
state, city, or zip code of the user's choosing. After which the program will output the breweries filtered
by the search. The program will loop back through the entirety of the steps until the user chooses to type '4'
at the initial filter input to exit the program.

## Built With

  - [Github Docs](https://choosealicense.com/) - Used to choose the license.

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code
of conduct, and the process for submitting pull requests to us.

## Authors

  - **Joshua Fletcher** - *Provided entirety of project* -
    [FletchyAF](https://github.com/FletchyAF)

## License

MIT License

This project is licensed under the MIT License - see the LICENSE.md file for details

## Acknowledgments

-Annabel Wilmerding's live build was very helpful in the creation of my phase 1 project.
