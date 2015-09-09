class Ship
  attr_reader :length

  def initialize(length)
    @length = length
    @already_placed = false
    @hit = []
    @positions = []
  end

  def place(x, y, horizontal)
    # Checking for the place you want to put the ship to see if it is open.
    # This method returns true or false for if the coordinates are in the positions array.
    return false unless @positions.empty?
    if horizontal
      (x...x + @length).each do |i|
        @positions << [i, y]
      end
    else
      (y...y + @length).each do |j|
        @positions << [x, j]
      end
    end
  end

  def covers?(x, y)
    # This method returns true or false for if the ship is covering these postions in the @positions array.
    # If the place method returns true, they are covering these positions (the coordinates have been stored)
    @positions.include?([x, y])
  end

  def overlaps_with?(other_ship)
    @positions.each do |place|
      return true if other_ship.covers?(place[0], place[1])
    end
    false
  end

  def fire_at(x, y)
    # Pushes x, y coordinates into @hit array if covers? the coordinates has a ship on it is (true).
    if covers?(x, y) && !@hit.include?([x, y])
      @hit << [x, y]
    end
  end

  def sunk?
    @hit.length == @length
  end
end
