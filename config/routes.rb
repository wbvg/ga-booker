GaBooker::Application.routes.draw do

  root :to => 'home#index'
  resources :rooms

  resources :users, :except => [:edit] do
    collection do
      get 'edit'
    end
  end

 resources :bookings, :except => [:edit] do
    collection do
      get 'edit'
    end
  end

  # resources :users, :only => [:index, :new, :create]
  resources :bookings, :only => [:index, :create]


   get '/login' => 'session#new'
   post '/login' => 'session#create'
   delete '/login' => 'session#destroy'



end
