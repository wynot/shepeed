Rails.application.routes.draw do
  resources :pee_pees

  root :to => "pee_pees#index"

end
