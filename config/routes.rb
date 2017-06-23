Rails.application.routes.draw do

  root "bars#index"

  resources :charges, only: [:new, :create]

  get 'thanks', to: 'charges#thanks', as: 'thanks'
  
  get 'charges/new'

  get 'charges/create'


  resources :order_items

  # resources :drinks
  resources :bars do
    resources :drinks, only: [:index, :show]
    resources :orders, shallow: true
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'
end
