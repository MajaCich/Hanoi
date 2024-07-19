require './hanoi_tower.rb'

# Variable that contains user input
num_discs = 0

#Reading user input
while num_discs < 1 || num_discs.is_a?(String)
    puts "Podaj liczbę pierścieni: "
    num_discs = gets.to_i
  end

# Create and initialize tower of Hanoi
tower = HanoiTower.new(num_discs, true)

# Star solving tower of Hanoi
tower.start