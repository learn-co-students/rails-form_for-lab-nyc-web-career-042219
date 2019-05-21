Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:show, :index, :edit, :update, :new, :create]
  resources :school_classes, except: [:destroy]
end
