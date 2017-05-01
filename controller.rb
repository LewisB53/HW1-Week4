require ('sinatra')
require ('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/game')

def game
  hand1 = params[:hand1]
  hand2 = params[:hand2]
  return Game.new(hand1, hand2)
end

get '/welcome' do
  erb(:welcome)
end

get '/play' do
  erb(:play)
end

get '/play/:hand1/:hand2' do
  @winner = game.rock_beats_scissors
erb(:result)
end
