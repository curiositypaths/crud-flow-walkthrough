Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get /hint/new
  get '/hints/new', to: 'hints#new', as: 'new_hint'
  get '/hints/:id', to: 'hints#show', as: 'hint' # hint_path



  get '/hints', to: 'hints#index', as: 'hints'
  post '/hints', to: 'hints#create'

  get '/hints/:id/edit', to: 'hints#edit', as: 'edit_hint'
  patch '/hints/:id', to: 'hints#update'
  delete '/hints/:id', to: 'hints#destroy'
end
