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
end
