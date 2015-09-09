require 'minitest/autorun'
require 'minitest/pride'
require './battleship.rb'
require './player.rb'
require './humanplayer.rb'
require './computerplayer.rb'
require './ship.rb'
require './grid.rb'
require './position.rb'

# already_placed = Array.new
# puts "Let's play Battleship!"
# puts "Enter coordinates of where you want to place your ship"
#   input = get_user_input
#   grid.has_ship_on?(input)
# puts "Enter coordinates you want to bomb"
#   input = get_user_input
#   grid.has_ship_on?(input)



position_objects_array = Array.new
10.times do |c|
  10.times do |d|
    position_objects_array = Position.new(c, d)
  end
end
puts position_objects_array
