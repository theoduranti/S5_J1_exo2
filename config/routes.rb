Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'static_pages#home'
  get '/gossip/new', to: 'gossips#new'
  post '/gossip/new', to: 'gossips#create'
  get '/gossip/:anonymous_author', to: 'gossips#show', as: 'gossip'
end
