require 'player'

describe Player do
  subject(:mike) { Player.new('mike') }
  subject(:mat) { Player.new('mat')}

  describe '#name' do
    it 'returns a players name' do
    expect(mike.name).to eq 'mike'
    end
  end

  describe '#attack' do
    it 'attacks a player' do
      expect(mat).to receive(:reduce_hp)
      mike.attack(mat)
    end
  end

  describe '#reduce_hp' do
    it 'reduces the player HP' do
      expect{ mike.reduce_hp }.to change { mike.hit_points }.by(-10)
    end
  end
end
