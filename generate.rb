require 'dimension_drawer'
require 'fileutils'
require 'optparse'

options = {:height => nil, :width => nil, :depth => nil}

parser = OptionParser.new do|opts|
	opts.banner = "Usage: generate.rb [options]"
	opts.on('-h', '--height height', 'Height') do |height|
		options[:height] = height;
	end
  opts.on('-w', '--width width', 'Width') do |width|
		options[:width] = width;
	end
  opts.on('-d', '--depth depth', 'Depth') do |depth|
		options[:depth] = depth;
	end

  	opts.on('--help', 'Displays Help') do
		puts opts
		exit
	end
end

parser.parse!

if options[:height] == nil
	print 'Enter height: '
    options[:height] = gets.chomp
end
if options[:width] == nil
	print 'Enter width: '
    options[:width] = gets.chomp
end
if options[:depth] == nil
	print 'Enter depth: '
    options[:depth] = gets.chomp
end

svg = DimensionDrawer.new( options[:height].to_f, options[:width].to_f, options[:depth].to_f, 400, 320).cabinet_projection

File.write('dimensions.svg', svg)

print "Here's your SVG code:\n"
print "_____________________\n\n"
print svg
print "\n"
print "_____________________\n\n"
