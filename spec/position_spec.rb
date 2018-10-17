require 'position'

describe Position do

  describe '#go_to' do
    it 'goes NORTH' do
      position = Position.new(1, 1, 'NORTH')

      expect(position.go_to('NORTH')).to eq(Position.new(1, 2, 'NORTH'))
    end

    it 'goes SOUTH' do
      position = Position.new(1, 1, 'SOUTH')

      expect(position.go_to('SOUTH')).to eq(Position.new(1, 0, 'SOUTH'))
    end

    
  end

end
