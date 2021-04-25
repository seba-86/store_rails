Rails.application.routes.draw do
  resource :cart, only: [:update, :show] do
  member do 
    post :pay_with_paypal
    get :process_paypal_payment
  end
end

  devise_for :admins
  devise_for :users

  resources :products
  resources :categories
  
  authenticate :admin do
    
    resources :sizes
    resources :colors
    resources :coupons
  end

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
