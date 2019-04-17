require 'player'

describe Player do
  subject(:mike) { Player.new('mike') }

  describe '#name' do
    it 'returns a players name' do
    expect(mike.name).to eq 'mike'
    end
  end
end
