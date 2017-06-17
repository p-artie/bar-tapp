Rails.application.routes.draw do

  root "bars#index"
  resources :order_items

  # resources :drinks
  resources :bars do
    resources :drinks, only: [:index, :show]
    resources :orders, shallow: true
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
