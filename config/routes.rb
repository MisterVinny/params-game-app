Rails.application.routes.draw do
  get "/name_game", controller: "parameters", action: "name_game"
  get "/number_guess", controller: "parameters", action: "guess_a_number"
end
