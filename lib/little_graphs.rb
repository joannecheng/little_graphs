require 'rmagick'
include Magick
class LittleGraphs
  attr_accessor :datapoints, :width, :height

  def initialize(datapoints = [])
    @datapoints = datapoints
    self.width
    self.height
  end

  def width(width = 0)
    @width = width
  end

  def height(height = 20)
    @height = height
  end

  def draw(filename = nil)
    width = @width
    height = @height
    if filename.nil?

    else
      f = Image.new(width, height) do 

      end

    end
  end

end
