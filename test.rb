require 'dimension_drawer'
require 'fileutils'

File.write('test.svg', DimensionDrawer.new(50.48, 33.66, 9.53, 400, 320).cabinet_projection)
