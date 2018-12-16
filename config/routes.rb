Rails.application.routes.draw do
  devise_for :users
  root 'landing#index'

  get '/my_account', to: 'my_account#modal'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
