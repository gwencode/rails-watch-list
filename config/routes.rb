# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "lists#index"
  resources :lists, only: %i[index show new create destroy] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: [:destroy]
end

# As a user, I can destroy a bookmark
