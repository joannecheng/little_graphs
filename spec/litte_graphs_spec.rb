require 'spec_helper'

describe LittleGraphs do
  describe '#initialize' do
    context 'with width and height' do
      it 'sets width and height' do
        lg = LittleGraphs.new(100, 200)
        lg.width.should == 100
        lg.height.should == 200
      end
    end

    context 'without width and height' do
      it 'sets width and height to default' do
        lg = LittleGraphs.new
        lg.width.should == 60
        lg.height.should == 20
      end
    end
  end

  describe '#draw' do
    context 'with datapoints' do
      it 'draws a graph' do
        lg = LittleGraphs.new
        lg.draw([1, 2, 3, 4, 5])
      end
    end
  end

  describe '#define_coordinates' do
    context 'datapoints' do
      it 'finds x,y coordinates for 1D array' do
        lg = LittleGraphs.new
        coords = lg.define_coordinates([1, 2, 3, 4, 5])
        coords.should == [0, 1, 10, 2, 20, 3, 30, 4, 40, 5]  
      end
    end
  end
end
