Rails.application.routes.draw do
  root to: 'calculations#index'
  resources :calculations, only: [:index, :new, :create, :destroy]
  get 'calculations/result'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
