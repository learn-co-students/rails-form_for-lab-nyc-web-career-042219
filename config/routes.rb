Rails.application.routes.draw do
  resources :school_classes, only: [:new, :create, :show, :edit, :update]
  resources :students, only: [:new, :create, :show, :edit, :update]

  # index
  # get "/students", to: "students#index"
  # new
  # get "/students/new", to: "students#new"
  # # create
  # post "/students", to: "students#create"
  # # show
  # get "/students/:id", to: "students#show", as: "student"
  # # edit
  # get "/students/:id/edit", to: "students#edit"
  # # update
  # patch "/students/:id", to: "students#update"
  # delete
  # delete "/students/:id/delete", to: "students#delete"
end
