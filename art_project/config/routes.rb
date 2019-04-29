Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'users', to: 'users#index', as: 'users'
  post 'users', to: 'users#create'
  get 'users/:id', to: 'users#show', as: 'user'
  patch 'users/:id', to: 'users#update'
  put 'users/:id', to: 'users#update'
  delete 'users/:id', to: 'users#destroy'

  get 'users/:id/artworks', to: 'artworks#index', as: 'artworks'
  post 'artworks', to: 'artworks#create'
  get 'artworks/:id', to: 'artworks#show', as: 'artwork'
  patch 'artworks/:id', to: 'artworks#update'
  put 'artworks/:id', to: 'artworks#update'
  delete 'artworks/:id', to: 'artworks#destroy'

  get 'artwork_shares', to: 'artwork_shares#index', as: 'artwork_shares'
  post 'artwork_shares', to: 'artwork_shares#create'
  get 'artwork_shares/:id', to: 'artwork_shares#show', as: 'artwork_share'
  patch 'artwork_shares/:id', to: 'artwork_shares#update'
  put 'artwork_shares/:id', to: 'artwork_shares#update'
  delete 'artwork_shares/:id', to: 'artwork_shares#destroy'


end
