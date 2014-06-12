require 'matrix'
require 'cell'

class Map
  attr_reader :current_map, :rows, :columns

  def initialize map
    @current_map = map
    @rows = current_map.row_count
    @columns = current_map.column_count
  end

  def next_map
    next_cells = current_map.each_with_index.map do |val, row, col|
      cell = Cell.new({val: val, row: row, col: col, map: current_map})
      if cell.dead?
        cell.live_neighbor_count == 3 ? 1 : 0
      else
        case cell.live_neighbor_count
        when 0, 1 then 0
        when 2, 3 then 1
        else 0
        end
      end
    end

    Matrix.build(rows, columns) do |r, c|
      next_cells.shift
    end
  end
end
