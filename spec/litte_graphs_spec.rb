require 'spec_helper'

describe LittleGraphs do
  describe '#initialize' do
    context 'with datapoints' do
      it 'sets datapoints' do
        lg = LittleGraphs.new([1, 2, 3, 4,5])
        lg.datapoints.should == [1, 2, 3, 4, 5]
      end
    end

    context 'without datapoints' do
      it 'sets datapoints to empty array' do
        lg = LittleGraphs.new
        lg.datapoints.should be_empty
      end
    end
  end

  describe '#draw' do
    context 'with datapoints' do
      it 'draws a graph' do
      end
    end
  end
end
