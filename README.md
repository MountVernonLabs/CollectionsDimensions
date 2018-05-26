# CollectionsDimensions
Very simple command line ruby script to generate a dimensions SVG file for a collections object

## Usage
Install the dimensions_drawer and clipboard gem

For OSX:

```gem install dimension_drawer```

```gem install clipboard```

Then to generate your assets run the following command:

```ruby generate.rb -w 15.2 -h 15.2 -d 15.2```

Where 15.2 is the values of width, height and depth for your object (in centimeters)

The script will output the SVG code to your terminal screen, it copies the code automatically to your operating system's clipboard and also saves the results in the file dimensions.svg


## Many Thanks

This could not be possible without the help of the following people and institutions:

- Kjell Olsen and Gretchen Halverson of the Minneapolis Institute of Art
- George Oates for developing the dimension-drawer ruby gem
