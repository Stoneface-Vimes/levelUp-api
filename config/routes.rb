Rails.application.routes.draw do
  resources :todos do
    resources :items
  end

  resources :users
  resources :parties
  
  
  resources :quests

end