Rails.application.routes.draw do
  resources :books do
    collection do
      get :recent
    end

    member do
      post :mark_as_read
    end
  end
  get "up" => "rails/health#show", as: :rails_health_check
end
