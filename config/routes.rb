Rails.application.routes.draw do
  resources :order_items

  # resources :drinks
  resources :bars do
    resources :drinks, shallow: true
    resources :orders, shallow: true
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
