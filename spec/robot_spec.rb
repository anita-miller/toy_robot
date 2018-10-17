require 'robot'
require 'position'
require 'table'
require 'left_command'
require 'place_command'
require 'right_command'
require 'move_command'

describe Robot do

  let(:robot) { Robot.new }
  let(:table) { Table.new(5, 5) }

  describe '#place' do
    before do
      PlaceCommand.new(robot, table, position).execute
    end

    context 'valid position' do
      let(:position) { Position.new(2, 3, 'NORTH') }

      it 'robot is in the correct position' do
        expect(robot.current_position).to eq(position)
      end
    end
    context 'with invalid position' do
      let(:position) { Position.new(9, 9, 'NORTH') }

      it 'will not place robot' do
        expect(robot.current_position).to be nil
      end
    end
  end

end
