require 'matrix'
require 'map'
require 'cell'

describe Cell do
  describe '#dead?' do
    context 'when the value of the cell is 0 (zero)' do
      it 'is true' do
        dead_cell = Cell.new({val: 0})
        expect(dead_cell.dead?).to be_true
      end
    end

    context 'when the value of the cell is 1 (one)' do
      it 'is false' do
        dead_cell = Cell.new({val: 1})
        expect(dead_cell.dead?).to be_false
      end
    end
  end
end
