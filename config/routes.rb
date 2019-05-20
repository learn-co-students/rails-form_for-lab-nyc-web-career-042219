Rails.application.routes.draw do
  resources :school_classes
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/schoolclass/new', to: 'schoolclass#new'
  post '/schoolclass', to: 'schoolclass#create'
  get '/schoolclass/:id', to: 'schoolclass#show'
  get '/schoolclass/:id/edit', to: 'schoolclass#edit'
  patch '/schoolclass/:id', to: 'schoolclass#update'
  
  
  get '/students/new', to: 'students#new'
  post '/students', to: 'students#create'
  get '/students/:id', to: 'students#show'
  get '/student/:id/edit', to: 'student#edit'
  patch '/student/:id', to: 'student#update'
 

end
