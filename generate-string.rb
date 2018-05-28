require 'dimension_drawer'
require 'fileutils'
require 'optparse'
require 'clipboard'

options = {:height => nil, :width => nil, :depth => nil}

parser = OptionParser.new do|opts|
	opts.banner = "Usage: generate.rb [options]"
  opts.on('-d', '--dimensions dimensions', 'Dimensions') do |dimensions|
		options[:dimensions] = dimensions;
	end

  	opts.on('--help', 'Displays Help') do
		puts opts
		exit
	end
end

parser.parse!

if options[:dimensions] == nil
	print 'Enter dimensions: '
    options[:dimensions] = gets.chomp
end

dimension = options[:dimensions].gsub! ' cm', ''
dimension_array = dimension.split(" x ")
print dimension_array[1];

svg = DimensionDrawer.new( dimension_array[0].to_f, dimension_array[1].to_f, dimension_array[2].to_f, 400, 320).cabinet_projection

File.write('dimensions.svg', svg)

print "Here's your SVG code:\n"
print "_____________________\n\n"
print svg
print "\n"
print "_____________________\n\n"

Clipboard.copy(svg)
