class ParametersController < ApplicationController

  def name_game
    name = params[:name]
    if name.downcase.split(//).first == "a"
      render json: {message: "Hello, #{name.capitalize}, your name starts with the first letter of the alphabet."}
    else
      render json: {message: "Hello, #{name.capitalize}."}
    end
  end
  
  def guess_a_number
    winning_number = 52
    guess = params[:guess].to_i

    if guess < 1 || guess > 100
      render json: {message: "The number has to be between 1 and 100."}
    elsif guess == winning_number
      render json: {message: "You win! The number was #{winning_number}"}
    elsif guess < winning_number
      render json: {message: "#{guess} is too low."}
    elsif guess > winning_number
      render json: {message: "#{guess} is too high."}
    end
  end
  
end
