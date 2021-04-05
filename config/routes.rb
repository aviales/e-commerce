Rails.application.routes.draw do
  resources :carts, only: %i[show update]
  devise_for :users
  devise_for :admins
  root 'home#index'
  
  authenticate :admin do
    resources :products
    resources :categories  
  end

 resource :cart, only: [:show, :update] do
    member do
      post :pay_with_paypal
      get  :process_paypal_payment
    end
  end
end