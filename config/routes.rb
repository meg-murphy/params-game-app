Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/params_home", to: "params#params_home"
  get "/guess_a_num", to: "params#guess_a_num"
  get "/url_parameter/:message/:second_message", to: "params#url_params"
  get "/url_params/:number/", to: "params#guess_a_num_v2"
end
