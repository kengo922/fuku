Rails.application.routes.draw do
  root to: "products#show"
  resources :products do 
  end
end
