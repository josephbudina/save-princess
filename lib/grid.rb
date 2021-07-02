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