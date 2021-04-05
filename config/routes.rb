Rails.application.routes.draw do
  # get 'carts/update'
  # get 'carts/show'

  resource :cart, only: [:update, :show] do
  member do 
    post :pay_with_paypal
    get :process_paypal_payment
  end
end

  devise_for :admins
  devise_for :users

  # authenticate :admin do
    resources :products
    resources :categories
    resources :sizes
    resources :colors
  # end

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
