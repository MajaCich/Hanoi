# spec/hanoi_tower_spec.rb
require_relative '../hanoi_tower'

RSpec.describe HanoiTower do
  # Defines the number of discs used in the tests.
  # @return [Integer] The number of discs.
  let(:num_discs) { 3 }
  
  # Creates an instance of HanoiTower with a predefined number of discs.
  # @return [HanoiTower] An instance of the HanoiTower class.
  let(:tower) { HanoiTower.new(num_discs, false) }

  # Tests for the #initialize method of the HanoiTower class.
  describe '#initialize' do
    # Tests if the number of discs is correctly initialized.
    #
    # It verifies that the discs attribute of the HanoiTower instance is set
    # to the number of discs provided during initialization.
    it 'initializes with the correct number of discs' do
      expect(tower.discs).to eq(num_discs)
    end

    # Tests if the towers are initialized correctly.
    #
    # It checks that the first tower is initialized with the discs in descending
    # order, and the other two towers are empty.
    it 'initializes the towers correctly' do
      expect(tower.towers[0]).to eq([3, 2, 1])
      expect(tower.towers[1]).to eq([])
      expect(tower.towers[2]).to eq([])
    end
  end

  # Tests for the #move_disc method of the HanoiTower class.
  describe '#move_disc' do
    # Tests if a disc is correctly moved from one tower to another.
    #
    # It moves a disc from the first tower to the second tower and verifies that
    # the disc is removed from the first tower and added to the second tower.
    it 'moves a disc from one tower to another' do
      tower.move_disc(0, 1)
      expect(tower.towers[0]).to eq([3, 2])
      expect(tower.towers[1]).to eq([1])
    end
  end

  # Tests for the #move_discs method of the HanoiTower class.
  describe '#move_discs' do
    # Tests if the Tower of Hanoi puzzle is solved correctly.
    #
    # It starts the process to solve the Tower of Hanoi puzzle and verifies that
    # all discs are moved to the last tower, with the first two towers being empty.
    it 'solves the Tower of Hanoi puzzle' do
      tower.start
      expect(tower.towers[0]).to eq([])
      expect(tower.towers[1]).to eq([])
      expect(tower.towers[2]).to eq([3, 2, 1])
    end
  end
end
