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