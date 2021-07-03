class BotSavesPrincess2
  attr_reader :bot_coords,
              :princess_coords

  def initialize(row, column, grid)
    @bot_coords = [row, column]
    @princess_coords = find_princess_position(grid)
  end

  def find_princess_position(grid)
    grid.each_with_index do |line, index|
      return [index, line.chars.index('p')] if line.include?('p')
    end
  end

  def distance_to_princess
    horizontal_distance = @princess_coords[1] - @bot_coords[1]
    vertical_distance = @princess_coords[0] - @bot_coords[0]
    [horizontal_distance, vertical_distance]
  end

  def next_move
    distance = distance_to_princess
    if distance[0] > 0
      puts 'RIGHT'
    elsif distance[0] < 0
      puts 'LEFT'
    elsif distance[1] > 0
      puts 'DOWN'
    else
      puts 'UP'
    end
  end
end