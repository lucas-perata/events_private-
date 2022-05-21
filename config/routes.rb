Rails.application.routes.draw do
  get "users/show"
  devise_for :users, :controller => { :sessions => 'sessions' }
 
  resources :events do 
    resources :attendances, only: [:new, :create, :destroy]
    member do 
      get "attend"
      get "unatted"
    end 
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
    root "events#index"
end
