# HanoiTower class that represents tower of hanoi problem
class HanoiTower

  # Number of discs
  # @return [Numeric] the number of discs
  attr_accessor :discs

  # Array that represents towers
  # @return [Array<Numeric>] three arrays
  attr_accessor :towers

  # Flag that controls display of towers
  # @return [Boolean] True if the display output is enabled, false otherwise.
  attr_accessor :display_flag

  # Initialize method of class HanoiTower
  #
  # @param num_discs [Number] the format type
  # @return [HanoiTower] An instance of the HanoiTower class.
  def initialize(num_discs, flag)
    @discs = num_discs
    @display_flag = flag
    @towers = Array.new(3) { [] }
    @towers[0] = (1..num_discs).to_a.reverse
  end

  # Method that move one disc from one tower to another tower
  #
  #
  # @param from [Numeric] number of the tower the disc is from
  # @param to [Numeric] number of the tower the disc is moving to
  # @return [Nothing] 
  def move_disc(from, to)
    disc = towers[from].pop
    towers[to].push(disc)
    if display_flag == true
      display 
    end 
  end

  # Method that moves multiple discs from one tower to another using an auxiliary tower
  #
  # @param discs [Numeric] the number of discs to move
  # @param from [Numeric] the number of the tower the discs are from
  # @param to [Numeric] the number of the tower the discs are moving to
  # @param aux [Numeric] the number of the auxiliary tower used in the process
  # @return [Nothing] 
  def move_discs(discs, from, to, aux)
    if discs < 1
      return
    end

    if discs == 1
      move_disc(from, to)
    else
      move_discs(discs - 1, from, aux, to)
      move_disc(from, to)
      move_discs(discs - 1, aux, to, from)
    end
  end

  # Method that starts the process of solving the Tower of Hanoi puzzle
  #
  # @return [Nothing]
  def start()
    move_discs(discs,0,2,1)
  end

  # Method that display towers 
  #
  # @return [Nothing]
  def display
    max_height = @discs
    tower_width = @discs * 2 + 1
  
    @towers.each_with_index do |tower, index|
      puts "Tower #{index + 1}:"
      
      display_tower = tower.dup.fill(0, tower.size...max_height)
      
      display_tower.reverse.each do |disc|
        if disc == 0
          puts (" " * (tower_width / 2)) + "|" + (" " * (tower_width / 2))
        else
          disc_str = "#" * (disc * 2 - 1)
          spaces = (tower_width - disc_str.size) / 2
          puts (" " * spaces) + disc_str + (" " * spaces)
        end
      end
  
      puts "-" * tower_width
      puts "\n"
    end
    sleep(1)
    system('clear')
  end
  
  # Method that display current towers state (in array)
  #
  # @return [Nothing] just display arrays
  def display_arrays
    puts "Current towers state:"
    towers.each_with_index do |tower, index|
      puts "Tower #{index + 1}: #{tower}"
    end
    puts "\n"
  end

end

