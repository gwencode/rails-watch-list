# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: %i[index show create destroy] do
    resources :bookmarks, only: %i[create]
  end
  resources :bookmarks, only: [:destroy]

  # get 'lists/:id', to: 'bookmarks#new'
  # post 'lists/:id', to: 'bookmarks#create'
end
