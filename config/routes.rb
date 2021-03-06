Rails.application.routes.draw do
  namespace :api do
    api_version(module: 'V1', path: { value: 'v1' }, defaults: { format: 'json' } ) do
      resources :users, only: [:create, :index, :show]
      resources :goals, only: [:create]
    end
  end
end
