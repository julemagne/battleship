class Grid

  def initialize
    position_objects_array = Array.new
    10.times do |c|
      10.times do |d|
        position_objects_array = Position.new(c, d)
      end
    end

  def get_user_input
    gets.chomp
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

  def place_ship(ship_object, number1, number2, x = false)

  end

  def has_ship_on?(number1, number2)

    # search through Array of position objects and
    # if a position object in the array has .number1 == number1 && .number2 == number2 return true

  end

end
end
