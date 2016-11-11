Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/params_home", to: "params#params_home"
  get "/guess_a_num", to: "params#guess_a_num"
end
