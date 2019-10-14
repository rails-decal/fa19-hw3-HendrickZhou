Rails.application.routes.draw do
  get 'cities/view'
  get 'cities/new'
  post 'cities/create'
  post 'cities/update'
  root "cities#index"
end
