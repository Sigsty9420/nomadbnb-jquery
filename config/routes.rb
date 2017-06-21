Rails.application.routes.draw do
  resources :cities
  resources :rooms
  devise_for :users,
             :controllers => { :omniauth_callbacks => "users/omniauth_callbacks",
                               :registrations => 'registrations'
                              },
             :path => '',
             :path_names => {:sign_in => 'login', :sign_out => 'logout', :edit => 'profile'}

  root "static#home"

  get '/auth/facebook/callback' => 'sessions#create'

  resources :users, only: [:show]

  resources :rooms do
    resources :reservations, only: [:new, :create, :index, :show]
  end

end
