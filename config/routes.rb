Rails.application.routes.draw do
  scope "(:locale)", locale: /en|ar/ do
    resources :users
    get "up" => "rails/health#show", as: :rails_health_check
  end
end
