Rails.application.routes.draw do

  get 'payment_notification/create'

  get 'site/about'
  get 'site/contact'

 
  get '/about' => 'site#about' 
  get '/contact' => 'site#contact'

  get '/admin' => 'user#admin_login'
  get '/logout' => 'user#logout'
  get '/signedinuserprofile' => 'profiles#signedinuserprofile'
  
  resources :profiles
  devise_for :users

  resources :products
  resources :order_items
  resource :carts, only: [:show] 
  resource :payments, only: [:show]
  resource :thankyous, only: [:show]
  delete '/carts' => 'carts#destroy'
  get '/carts/index' => 'carts#index'
  
  #resources :payment_notification, only: [:create]
  get '/profile/show'=> 'profile#show'
  
# devise_for "users", :skip => [:registrations]
#  as :user do
#   get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_regsitration'
#   put 'users' => 'devise/registrations#update', :as => 'user_registration'
#  end 
  root 'site#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end