class BotSavesPrincess
  attr_reader :grid

  def initialize(grid)
    @grid = grid
  end

  def display_path_to_princess
    moves = []
    rows, columns = @grid.position_difference
    moves << (rows.negative? ? (['UP'] * rows.abs) : (['DOWN'] * rows))
    moves << (columns.negative? ? (['LEFT'] * columns.abs) : (['RIGHT'] * columns))
    moves.flatten.each { |move| puts move }
  end
end