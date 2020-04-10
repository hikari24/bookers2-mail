Rails.application.routes.draw do

  root 'home#top'
  get 'home/about'

  devise_for :users, controllers: {
  	registrations: "users/registrations"
  }

  resources :users, only: [:show,:index,:edit,:update]

  resources :books do
  	resource :post_comments, only: [:create, :destroy]
 	resource :favorites, only: [:create, :destroy]
  end

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

end

