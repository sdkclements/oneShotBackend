Rails.application.routes.draw do
  root to: 'tabs#index'

  resources :tabs do
    resources :shots do
      resources :chasers
    end
  end
end
