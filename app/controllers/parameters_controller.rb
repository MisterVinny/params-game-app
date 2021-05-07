class ParametersController < ApplicationController

  def name_game
    name = params[:name]
    # have output_message here (this commented method is more efficient)
    if name.downcase.split(//).first == "a"
      render json: {message: "Hello, #{name.capitalize}, your name starts with the first letter of the alphabet."}
      # have just an if statement to change the output message if true
    else
      render json: {message: "Hello, #{name.capitalize}."}
    end
    # have render message down here with output_message
  end
  
  def guess_a_number # Handles all requests using :guess
    winning_number = 52
    guess = params[:guess].to_i
    if guess < 1 || guess > 100
      message = "The number has to be between 1 and 100."
    elsif guess == winning_number
      message = "You win! The number was #{winning_number}"
    elsif guess < winning_number
      message = "#{guess} is too low."
    elsif guess > winning_number
      message = "#{guess} is too high."
    end
    render json: {
      message: message
    }

  end
  def cred_guess_a_number # Handles all requests using :guess
    if params[:username] == "hugh" && params[:password] == "swordfish"
      winning_number = 52
      guess = params[:guess].to_i
      if guess < 1 || guess > 100
        message = "The number has to be between 1 and 100."
      elsif guess == winning_number
        message = "You win! The number was #{winning_number}"
      elsif guess < winning_number
        message = "#{guess} is too low."
      elsif guess > winning_number
        message = "#{guess} is too high."
      end
      render json: {
        credentials: "Valid",
        message: message
      }
    else
      render json: {
        credentials: "Invalid",
        message: "You don't have access to this game."
      }
    end
  end
 
end
