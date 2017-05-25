Rails.application.routes.draw do
    get 'wellcome/index'
    get 'log_out' => 'sessions#destroy', :as => 'log_out'
    # get 'log_in' => 'sessions#new', :as => 'log_in'
    # get 'sign_up' => 'users#new', :as => 'sign_up'
    get 'log_in' => 'sessions#create', :as => 'log_in'
    #  shallow do
    get 'json_get' => 'products#getjson', :as => 'json_get'
    get 'json_put' => 'products#putjson', :as => 'json_put'
    root 'home#index'
    resources :stores
    resources :products
    resources :users
end
# end
