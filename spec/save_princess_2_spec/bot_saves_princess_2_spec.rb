require './spec_helper'
require 'save_princess_2/bot_saves_princess_2'

describe 'Bot Saves Princess' do
  it 'should instantiate with correct x/y coordinates for bot' do
    bot = BotSavesPrincess2.new(2, 3, ["---", "-m-", "p--"])

    expect(bot.bot_coords).to eq([2, 3])
    expect(bot.princess_coords).to eq([2, 0])
  end

  it 'should find distance between princess and bot' do
    bot = BotSavesPrincess2.new(2, 3, ["---", "-m-", "p--"])

    expect(bot.distance_to_princess).to eq([-3, 0])
  end
end