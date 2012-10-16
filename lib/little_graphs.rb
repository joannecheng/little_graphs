require 'quick_magick'

class LittleGraphs
  attr_accessor :width, :height

  def initialize(width = 100, height = 35)
    @width = width
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
    margin = 5
    point_space = @width/datapoints.length
    translated_datapoints = translate_datapoints(datapoints)
    coordinates = []

    translated_datapoints.each_with_index do |datapoint, i|
      coordinates.push [i*point_space+margin, @height-margin-datapoint]
    end
    coordinates.flatten
  end

  def translate_datapoints(datapoints)

    datapoints
  end

end
