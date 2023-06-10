Rails.application.routes.draw do
  devise_for :users

  root "static_pages#home"
  resources :tweets, except: [:update, :edit] do
    delete :destroy, on: :member
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
