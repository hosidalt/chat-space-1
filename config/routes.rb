Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "groups#index"
  resources :users,   only: [:update, :edit]
  resources :groups,  only: [:index , :new, :edit, :create, :update, :delete] do |variable|
    resources :members,  only: [:index, :create]
  end
end