require 'rmagick'
include Magick
class LittleGraphs
  attr_accessor :datapoints, :width, :height

  def initialize()
    @datapoints = []
  end

  def width(width = 0)
    @width = width
  end

  def height(height = 20)
    @height = height
  end

  def draw(datapoints, filename = nil)
    width = @width
    height = @height
    if filename.nil?

    else
      f = Image.new(width, height) do 

      end

    end
  end

end
