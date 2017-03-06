Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'

  get 'home/single-page'
  get 'home/single-page-2'
  get 'home/single-page-3'
end
