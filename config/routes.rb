Rails.application.routes.draw do

  get '/rooms/listings', to: 'rooms#listings'
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
    resources :reviews, only: [:new, :create, :index, :show, :destroy]
  end


end
