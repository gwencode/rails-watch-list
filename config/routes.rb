# frozen_string_literal: true

Rails.application.routes.draw do
  resources :lists, only: %i[index show new create]
end

# As a user, I can create a movie list #create / #new
# As a user, I can see the details of a movie list #show

# As a user, I can bookmark a movie inside a movie list
# As a user, I can destroy a bookmark
