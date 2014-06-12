require 'matrix'
require 'map'

describe Map do
  describe '#next_map' do
    it 'is a matrix' do
      expect(Map.new(Matrix[[1,2],[3,4]]).next_map).to be_a Matrix
    end
  end
end
