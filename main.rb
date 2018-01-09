def place_ship(ship, start_position, orientation)
    ship.length.times do
        @grid_pos = self.grid[start_position[:row]][start_position[:column]]
        grid_pos.ship = ship
        grid_pos.status = :occupied
        MovementStrategy.new(start_position,orientation).move_to_next_position
    end
end

#This is Fizz Buzz Enterprise level coding in Ruby
class MovementStrategy
    def initialize (current_position, orientation)
        @current_position = current_position
        @orientation = orientation
    end

    def move_to_next_position()
        if @orientation == :vertical
            @current_position[:row] += 1
        else
            @current_position[:column] += 1 
        end
    end
end