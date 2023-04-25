Rails.application.routes.draw do
  get '/plots', to: 'plots#index'

  resources :plots, only: [:index] do
    resources :plants, only: [:destroy], controller: 'plot_plants'
  end
  resources :gardens, only: [:show]
end
