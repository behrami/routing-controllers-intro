Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/" => "pages#welcome"
  get "/welcome" => "pages#welcome"
  get '/contest' => 'pages#contest'
  get '/about' => 'pages#about'

end
