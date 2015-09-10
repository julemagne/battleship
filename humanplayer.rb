def get_user_input
  gets.chomp
end

class HumanPlayer < Player
  attr_reader :name, :grid, :ships
  def initialize(name = "Dave")
    @name = name
    @grid = Grid.new
    @ships = []
  end

  def place_ships(length_array = [2, 3, 3, 4, 5])
    length_array.each do |s|
      puts "#{name}, where would you like to place a ship of length #{s}?"
      input = get_user_input
        x = grid.x_of(input)
        y = grid.y_of(input)
      puts "Across or Down?"
      if input == "Across"
        horizontal = true
      elsif input == "Down"
        horizontal = false
      else
      end
      @ships << grid.place_ship(Ship.new(s), x, y, horizontal)
    end
  end

end
