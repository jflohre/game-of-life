require 'spec_helper'


describe 'Game of Life' do
	let(:game) {Game.new}
	context 'cell' do
		subject {Cell.new(game)}
#Initialize a cell
	it "should return a new cell object" do
		cell = subject.insert_cell(3,5)
		cell.should be_an_instance_of Cell
		cell.game.should == subject.game
	end
	it 'should throw an ArgumentError when fewer than 2 parameters' do 
		lambda {subject.insert_cell(1)}.should raise_exception ArgumentError
	end
	it 'should throw an ArgumentError when greater than 2 parameters' do 
		lambda {subject.insert_cell(1,2,3)}.should raise_exception ArgumentError
	end
	it 'should return the x and y value' do
		cell = subject.insert_cell(1,2)
		cell.x.should == 1
		cell.y.should == 2
	end
	it 'should be added to the game class in the form of an Array' do
		cell = subject.insert_cell(1,2)
		game.cells.should include(cell)
	end
	it 'should return alive? for a cell' do
		cell = subject.insert_cell(1,2)
		cell.alive?.should == true
	end
	it 'should return 0 for neighbors' do
		cell = subject.insert_cell(1,2)
		cell1 = subject.insert_cell(1,3)
		cell.neighbors.count.should == 0
	end

end
end

#describe 'game' do
#	let(:game) do
#		Game.new
#	end
##	it "should return an array of the current cells" do
##		game.cells << [cell]
##		game.cells.length.should == 1
#		game.add_cells.should == [[1,2],[2,4]]
###		game.cells.should == [[1,2]]
#	end
#end
#end
#
	#describe '#spawn_at' do
	#	it 'should spawn a new cell at x,y and add it to game_layout' do
	#		cell.spawn_at.should == [[1,2]]
	#	end
	#end	
		#it 'should take a cell from world and remove it' do
		#	cell = Cell.new(2,4)
		#	@cell.dead.should = []
	#	end

#	describe '#neighbors' do
#		it 'should look for neighbors' do
#			cell.neighbors.should == true
#		endT
#end

#	describe 'Game' do
#		it 'should give a world arrray listing all of the alive cells' do
#			cell.game.should == []
#	end
#		it 'should get the cells from the Cell class and put them into the Array'
#


# it 'Rule:1 Any live cell with fewer than two live neighbours dies, as if caused by under-population.' do
# 	cell = Cell.new(1,0)
# 	cell.world.should == [[1,0]]
# end
#
# it 'should detect a neighbor to the north' do
# 	cell = Cell.new.spawn_at(1,1)
#	cell.neighbors.count.should == 2
#end

