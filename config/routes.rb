# frozen_string_literal: true

Rails.application.routes.draw do
  resources :items
  resources :items do
    member do
      patch 'upload', to: 'items#upload'
    end
  end
  mount Alchemy::Engine => '/'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
