class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(10)
  end

  def score
    @input = params[:word].chars
    @score = ''

    @letters = ('a'..'z').to_a.sample(10)
    # ['Cat', 'Dog', 'Bird'].include? 'Dog'
    @input.each do |word|
      @letters.all? { |letter| letter == word } ? @score = "true" : @score = "false"
    end
  end
end
