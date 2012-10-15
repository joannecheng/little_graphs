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
    puts coordinates.inspect

    f = Magick::Image.new(@width, @height) do 
      line = Magick::Draw.new
      line.stroke_opacity(0.8)
      line.stroke_width(1)
      line.polyline(coordinates)
    end

    f.write(filename)
  end

  def define_coordinates(datapoints)
    point_space = (@width-10)/datapoints.length
    coordinates = []
    datapoints.each_with_index do |datapoint, i|
      coordinates.push [i*point_space, datapoint]
    end
    coordinates.flatten
  end

end
