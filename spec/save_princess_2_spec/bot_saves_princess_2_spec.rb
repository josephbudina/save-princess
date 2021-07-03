require './spec_helper'
require 'save_princess_2/bot_saves_princess_2'

describe 'Bot Saves Princess' do
  it 'should find coords for bot and princess' do
    bot = BotSavesPrincess2.new(2, 3, ["---", "-m-", "p--"])

    expect(bot.bot_coords).to eq([2, 3])
    expect(bot.princess_coords).to eq([2, 0])
  end

  it 'should find distance between princess and bot' do
    bot = BotSavesPrincess2.new(2, 3, ["---", "-m-", "p--"])

    expect(bot.distance_to_princess).to eq([-3, 0])
  end

  it 'should find next move left' do
    bot = BotSavesPrincess2.new(2, 3, ["---", "-m-", "p--"])

    expect do
      bot.next_move
    end.to output("LEFT\n").to_stdout
  end

  it 'should find next move right' do
    bot = BotSavesPrincess2.new(1, 1, ["---", "--p", "---"])

    expect do
      bot.next_move
    end.to output("RIGHT\n").to_stdout
  end
  
  it 'should find next move up' do
    bot = BotSavesPrincess2.new(1, 1, ["-p-", "---", "---"])

    expect do
      bot.next_move
    end.to output("UP\n").to_stdout
  end
  
  it 'should find next move down' do
    bot = BotSavesPrincess2.new(1, 1, ["---", "---", "-p-"])

    expect do
      bot.next_move
    end.to output("DOWN\n").to_stdout
  end
end