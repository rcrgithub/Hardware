Rails.application.routes.draw do
    get 'wellcome/index'
    get 'log_out' => 'sessions#destroy', :as => 'log_out'
    # get 'log_in' => 'sessions#new', :as => 'log_in'
    # get 'sign_up' => 'users#new', :as => 'sign_up'
    get 'log_in' => 'sessions#create', :as => 'log_in'
    #  shallow do
    get 'json_get' => 'products#getjson', :as => 'json_get'
    get 'json_put' => 'products#putjson', :as => 'json_put'
    patch 'json_put2' => 'products#putjson2', :as => 'json_put2'
    patch 'json_put1' => 'products#putjson1', :as => 'json_put1'
    root 'home#index'
    resources :stores
    resources :products
    resources :users
end
# end
