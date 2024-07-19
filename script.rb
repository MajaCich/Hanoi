require './hanoi_tower.rb'

# Variable that contains user input
num_discs = 0

#Reading user input
while num_discs < 1 || num_discs.is_a?(String)
    puts "Podaj liczbę pierścieni (liczba całkowita, większa od zera): "
    begin
      num_discs = Integer(gets) 
    rescue
      puts "Podane dane są w złym formacie."
    end
  end

# Create and initialize tower of Hanoi
tower = HanoiTower.new(num_discs, true)

# Star solving tower of Hanoi
tower.start