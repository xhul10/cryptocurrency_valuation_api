Rails.application.routes.draw do
  resources :valuation_settings, only: [:index, :create, :update, :destroy], path: 'valuation-settings'
  resources :tracked_currencies, only: [:index, :create, :update, :destroy], path: 'tracked', param: :symbol do
    get 'ids', on: :collection
  end
  resources :currencies, only: [:index]
  resources :status, only: [:index]
end
