Rails.application.routes.draw do


  mount RedactorRails::Engine => '/redactor_rails'
  namespace :admin do
    resources :news
    get '', to: 'news#index', as: 'home'
  end
  devise_for :admin
  get 'test', to: 'home#test'
  get 'about', to: 'home#about'
  get 'news', to: 'home#news', as: 'news'
  get 'show/:id', to: 'home#show', as: 'show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'  
end
