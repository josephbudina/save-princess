class BotSavesPrincess
  attr_reader :grid

  def initialize(grid)
    @grid = grid
  end

  def display_path_to_princess
    moves = []
    rows, cols = @grid.position_difference
    moves << (rows.negative? ? (['UP'] * rows.abs) : (['DOWN'] * rows))
    moves << (cols.negative? ? (['LEFT'] * cols.abs) : (['RIGHT'] * cols))
    moves.flatten.each { |move| puts move }
  end
end

class Grid
  attr_reader :grid_size, 
              :grid,
              :bot_xy

  def initialize(grid_size, grid)
      @grid = grid
      @grid_size = grid_size
      @bot_xy = [(@grid_size - 1) / 2, (@grid_size - 1) / 2]
  end

  def position_difference
    princess_xy = []
    @grid.each_with_index do |line, index|
      princess_xy = [line.chars.index('p'), index] if line.include?('p')
    end
    rows_distance = princess_xy[1] - bot_xy[1]
    cols_distance = princess_xy[0] - bot_xy[0]
    [rows_distance, cols_distance]
  end
end

def displayPathtoPrincess(grid_size, grid)
    grid = Grid.new(grid_size, grid)
    save_princess = BotSavesPrincess.new(grid)
    save_princess.displayPathtoPrincess
end

m = gets.to_i

grid = Array.new(m)

(0...m).each do |i|
    grid[i] = gets.strip
end

displayPathtoPrincess(m,grid)