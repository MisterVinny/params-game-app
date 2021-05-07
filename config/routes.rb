Rails.application.routes.draw do
  get "/name_game", controller: "parameters", action: "name_game"
  get "/number_guess", controller: "parameters", action: "guess_a_number"
  get "/segment_guess/:guess", controller: "parameters", action: "guess_a_number"
  # Post request
  post "/post_guess" => "parameters#guess_a_number"
  # Post request with credentials
  post "/credentialed_guess" => "parameters#cred_guess_a_number"
end
