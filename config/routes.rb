Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :users, :except => [:new]
  get 'users/:id/confirm' => 'users#confirm',as: :confirm
  patch 'users/:id/withdrawal' => 'users#withdrawal', as: :withdrawal
  resources :photos do
    resource :likes, only: [:create, :destroy]
    resources :comment, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
