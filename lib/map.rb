require 'matrix'

class Map
	attr_reader :current_map

	def initialize cell_string
		rows = cell_string.split("\n").map { |row| row.split }
		@current_map = Matrix.rows(rows)
	end

	def next_map
		current_map.each_with_index do |val, row, col|
			cell = Cell.new({val: val, row: row, col: col, map: self})
			if cell.dead?
				return cell.live_neighbor_count == 3 ? 1 : 0
			else
				return case cell.live_neighbor_count
				when 0, 1 then 0
				when 2, 3 then 1
				else 0
				end
			end
		end
	end
end
