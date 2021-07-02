require './spec_helper'
require 'grid'

describe 'Bot Saves Princess' do
  it 'should instantiate with correct x/y coordinates for bot' do
    grid = Grid.new(3,["---", "-m-", "p--"])

    expect(grid.bot_xy).to eq([1, 1])
  end

  it 'should provide moves to get to princess' do
    grid = Grid.new(3,["---", "-m-", "p--"])

    expect(grid.position_difference).to eq( [1, -1])
  end
end