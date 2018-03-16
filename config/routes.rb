Rails.application.routes.draw do


  # Root, Welcome page.
  root 'welcome#index'

  # Routes for driver model
  devise_for :drivers, path: 'drivers', :controllers => {
    :registrations => "drivers/registrations"}
  resources :drivers, only: [:show]

  # Routes for passenger model
  devise_for :passengers
  resources :passengers, only: [:show]

  # Links for session auxiliary
  post 'session_helper/register'
  get 'session_helper/register'
  post 'session_helper/login'
  get 'session_helper/login'

  # Routes for trip
  get 'trip/new'
  post 'trip/create'
  get 'trip/create' => redirect('trip/new')
  get 'trip/selected_trip' => redirect('trip/new')
  post 'trip/selected_trip'
  post 'trip/finish_trip'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
