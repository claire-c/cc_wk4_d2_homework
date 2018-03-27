require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('./models/game.rb')

get "/:player1/:player2" do
  game = Game.new(params[:player1], params[:player2])
  winner = game.logic()
  return "And the winner is... #{winner}"
  # @winner = game.logic
  # erb(:layout)
end
