require_relative './lib/map.rb'

m = Map.new "0 1 0 0 0\n1 0 0 1 1\n1 1 0 0 1\n0 1 0 0 0\n1 0 0 0 1"
puts m.next_map.inspect

