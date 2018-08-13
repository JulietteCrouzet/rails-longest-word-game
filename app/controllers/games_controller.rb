class GamesController < ApplicationController
  def new
    @letters = (0...26).map { ('a'..'z').to_a[rand(26)] }
  end

  def score
    raise
    @word = params[:answer]
    @letters = params[:letters]
    @word.chars.all? {|letter| @word.chars.count(letter) <= @letters.chars.count(letter)}
  end

end
