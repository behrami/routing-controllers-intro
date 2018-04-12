Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#welcome'
  # get "/" => "pages#welcome"

  get "/welcome" => "pages#welcome"
  get '/contest' => 'pages#contest'
  get '/about' => 'pages#about'

  get '/kitten/:size' => 'pages#kitten', as: 'kitten'
  get '/kittens/:size' => 'pages#kittens', as: 'kittens'

  get '/secrets/:magic_word' => 'pages#secrets', as: 'magic_word'

end
