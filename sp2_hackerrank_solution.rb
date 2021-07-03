class BotSavesPrincess2
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
    elsif distance[1] < 0
      puts 'UP'
    end
  end
end
def nextMove(n,r,c,grid)
  bot = BotSavesPrincess2.new(r,c,grid)
    bot.next_move
end

n = gets.to_i

r,c = gets.strip.split.map {|num| num.to_i}

grid = Array.new(n)

(0...n).each do |i|
    grid[i] = gets
end

nextMove(n,r,c,grid)