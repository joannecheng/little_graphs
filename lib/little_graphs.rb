require 'quick_magick'

class LittleGraphs
  attr_accessor :width, :height

  def initialize(width = 100, height = 35)
    @width = width
    @height = height
  end

  def draw(datapoints, filename = nil)
    coordinates = define_coordinates(datapoints)

    f = QuickMagick::Image::solid(@width, @height, :white)
    f.draw_polyline(coordinates, :fill => :white, :stroke => :blue)

    if filename.nil?
      f.to_blob
    else
      f.save(filename)
    end
  end

  def define_coordinates(datapoints)
    margin = 5
    point_space = @width/datapoints.length
    translated_datapoints = translate_datapoints(datapoints)
    coordinates = []

    translated_datapoints.each_with_index do |datapoint, i|
      coordinates.push [i*point_space+margin, datapoint]
    end
    coordinates.flatten
  end

  def translate_domain(datapoints)
    point_space = @width/datapoints.length
  end

  def translate_datapoints(datapoints)
    height = @height - 5 # add a margin
    point_space = height/(datapoints.max - datapoints.min)

    datapoints.map { |datapoint| @height - datapoint * point_space - datapoints.min * point_space }
  end

end
