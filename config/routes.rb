Capy::Application.routes.draw do
  resources :viri


  root :to => "home#index"
end
