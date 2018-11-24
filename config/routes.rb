Rails.application.routes.draw do
  resources :lists do
    resources :items do
      member do
        patch :done
      end
    end
  end
  resources :welcome
  root 'lists#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
