class Cell

	attr_accessor :x, :y, :game, :neighbors

	def initialize(game,x=0,y=0)
		@game = game
		@x = x
		@y = y
		game.cells << self
	end

	def insert_cell(x,y)
		Cell.new(game,x,y)
	end

	def alive? 
		game.cells.include?(self)

	end

	def neighbors
		cells_with_neighbors= []
		neighbors = [] 
		neighbors= game.cells.dup
		 game.cells.each |cell| 
		if cell.x - @neighbors.x <= 1 && cell.y - @neighbors.y <= 1
		cells_with_neighbors << cell
	end

		cells_with_neighbors
	end

end

class Game
	attr_accessor :cells

	def initialize 
		@cells = []
	end

	def add_cells(cells)
		@cells << cells
	end
end

