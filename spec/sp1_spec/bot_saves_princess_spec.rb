require './spec_helper'
require 'sp1/bot_saves_princess'
require 'grid'

describe 'Bot Saves Princess' do
  it 'should instantiate with correct x/y coordinates for bot' do
    grid = Grid.new(3, ["---", "-m-", "p--"])
    bot = BotSavesPrincess.new(grid)

    expect(bot.grid.class).to eq(Grid)
    expect(bot.grid.bot_xy).to eq([1, 1])
  end

  it 'should provide moves to get to princess' do
    grid = Grid.new(3, ["---", "-m-", "p--"])
    bot = BotSavesPrincess.new(grid)

    expect(bot.display_path_to_princess).to eq(["DOWN", "LEFT"])
  end
end