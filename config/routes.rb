Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  namespace :api do
    namespace :v1 do
      get 'post/index'
      post :auth, to: 'authentication#create'
      get '/auth' => 'authentication#fetch'
    end
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
