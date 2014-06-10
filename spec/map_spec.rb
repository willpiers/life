require 'map'

describe Map do
	describe '#current_map' do
		it 'is a matrix' do
			expect(Map.new('1 1 0 1').current_map).to be_a Matrix
		end
	end
end
