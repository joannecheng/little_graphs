require 'quick_magick'

class LittleGraphs
  attr_accessor :width, :height

  def initialize(width = nil, height = nil)
    if width.nil? then self.width else self.width(width) end
    if height.nil? then self.height else self.height(height) end
  end

  def width(width = 60)
    @width = width
  end

  def height(height = 20)
    @height = height
  end

  def draw(datapoints, filename = nil)
    if filename.nil? then filename = "new.jpeg" end
    coordinates = define_coordinates(datapoints)

    f = QuickMagick::Image::solid(@width, @height, :white)
    f.draw_polyline(coordinates, :fill => :white, :stroke => :blue)

    f.save(filename)
  end

  def define_coordinates(datapoints)
    point_space = (@width-10)/datapoints.length
    coordinates = []
    datapoints.each_with_index do |datapoint, i|
      coordinates.push [@width -i*point_space, datapoint]
    end
    coordinates.flatten
  end

end
