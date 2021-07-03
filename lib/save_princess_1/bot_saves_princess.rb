class BotSavesPrincess
  attr_reader :directions,
              :move_count

  def initialize(grid_size, grid)
    @directions = find_princess_position(grid)
    @move_count = (grid_size - 1)/2
  end

  def find_princess_position(grid)
    if grid.first[0] == 'p'
      ['UP', 'LEFT']
    elsif grid.first[-1] == 'p'
      ['UP', 'RIGHT']
    elsif grid.last[0] == 'p'
      ['DOWN', 'LEFT']
    else
      ['DOWN', 'RIGHT']
    end
  end

  def display_path_to_princess
    @move_count.times do 
      puts @directions.first
      puts @directions.last
    end
  end
end