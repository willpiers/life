class Cell
  attr_reader :val, :row, :col, :map

  def initialize options
    @val = options[:val]
    @row = options[:row]
    @col = options[:col]
    @map = options[:map]
  end

  def dead?
    val == 0
  end

  def live_neighbor_count
    neighboring_locations.count do |location|
      map[location[:row], location[:col]] == 1
    end
  end

  def neighboring_locations
    [
      {row: row - 1, col: col - 1},
      {row: row - 1, col: col},
      {row: row - 1, col: col + 1},
      {row: row, col: col - 1},
      {row: row, col: col + 1},
      {row: row + 1, col: col - 1},
      {row: row + 1, col: col},
      {row: row + 1, col: col + 1}
    ].reject do |cell|
      cell[:row] < 0 || cell[:row] >= map.row_count ||
      cell[:col] < 0 || cell[:col] >= map.column_count
    end
  end
end
