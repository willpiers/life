require_relative './lib/map.rb'
require 'colorize'

rows = []
matrix = File.expand_path('./starting_matrix.txt', File.dirname(__FILE__))
File.open matrix, 'r' do |file|
	while line = file.gets
		rows << line.split('').map { |val| val.to_i }
	end
end

m = Matrix.rows(rows)
starting_map = Map.new m

1000.times do
	system 'clear'
	starting_map.next_map.to_a.each do |row|
		printable_row = row.map do |val|
			if val == 1
				"#{val} ".colorize(color: :light_yellow, background: :light_yellow)
			else
				"#{val} ".colorize(color: :black, background: :black)
			end
		end
		puts printable_row.join
	end
	starting_map = Map.new starting_map.next_map
	sleep 0.05
end
