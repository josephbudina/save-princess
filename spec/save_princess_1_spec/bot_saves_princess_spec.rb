require './spec_helper'
require 'save_princess_1/bot_saves_princess'

describe 'Bot Saves Princess' do
  it 'should find directions down/left' do
    bot = BotSavesPrincess.new(3, ["---", "-m-", "p--"])

    expect(bot.directions).to eq(["DOWN", "LEFT"])
    expect(bot.move_count).to eq(1)
  end
  
  it 'should find directions up/right' do
    bot = BotSavesPrincess.new(3, ["--p", "-m-", "---"])

    expect(bot.directions).to eq(["UP", "RIGHT"])
    expect(bot.move_count).to eq(1)
  end

  it 'should find directions down/right' do
    bot = BotSavesPrincess.new(3, ["---", "-m-", "--p"])

    expect(bot.directions).to eq(["DOWN", "RIGHT"])
    expect(bot.move_count).to eq(1)
  end

  it 'should find directions ' do
    bot = BotSavesPrincess.new(3, ["p--", "-m-", "---"])

    expect(bot.directions).to eq(["UP", "LEFT"])
    expect(bot.move_count).to eq(1)
  end

  it 'should provide moves to get to princess' do
    bot = BotSavesPrincess.new(3, ["---", "-m-", "p--"])

    expect(bot.display_path_to_princess).to eq(1)
  end
end