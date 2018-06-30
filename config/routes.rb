Rails.application.routes.draw do

  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }

  resources :histories

  root "histories#index"
  get 'histories/:user_id', to: 'histories#myhistory', as: 'myhistory'
end
