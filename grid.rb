
class Grid

  def initialize
    @ships = []
  end

  def empty_grid
    %Q{    1   2   3   4   5   6   7   8   9   10
  -----------------------------------------
A |   |   |   |   |   |   |   |   |   |   |
B |   |   |   |   |   |   |   |   |   |   |
C |   |   |   |   |   |   |   |   |   |   |
D |   |   |   |   |   |   |   |   |   |   |
E |   |   |   |   |   |   |   |   |   |   |
F |   |   |   |   |   |   |   |   |   |   |
G |   |   |   |   |   |   |   |   |   |   |
H |   |   |   |   |   |   |   |   |   |   |
I |   |   |   |   |   |   |   |   |   |   |
J |   |   |   |   |   |   |   |   |   |   |
  -----------------------------------------
}
  end

  def display
    puts empty_grid
  end

  def place_ship(ship, x, y, horizontal)
      ship.place(x, y, horizontal)
      @ships << ship
  end

  # def place_ship (ship, x, y, horizontal)
  #   #Checks if spaces are occupied
  #   if horizontal
  #     (x..x+ship.length-1).each do |i|
  #       return false if has_ship_on?(i, y)
  #     end
  #   else
  #     (y..y+ship.length-1).each do |i|
  #       return false if has_ship_on?(x, i)
  #     end
  #   end
  #   #Places ship horizontally or vertically
  #     ship.place(x, y, horizontal)
  #     if horizontal
  #       (x..x+ship.length-1).each do |i|
  #         @locations[get_position(i, y)].occupied = true
  #       end
  #     else
  #       (y..y+ship.length-1).each do |i|
  #         @locations[get_position(x, i)].occupied = true
  #       end
  #     end
  # end

  def has_ship_on?(x, y)
    # Loops over all ships to check if the coordinate (x, y) is in @positions array of any of them
    @ships.each do |ship|
      return true if ship.covers?(x, y)
    end
    false
  end

end
