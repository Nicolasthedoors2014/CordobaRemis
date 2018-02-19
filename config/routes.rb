Rails.application.routes.draw do

  # Root, Welcome page.
  root 'welcome#index'


  # Routes using gem devise for accounts

  devise_for :drivers, path: 'drivers', :controllers => {
    :registrations => "drivers/registrations"}



  devise_for :passengers
  #, path: 'passengers', controllers: {
  #  :registrations => "passengers/registrations", :sessions => "passengers/sessions"}


  # Links for session auxiliary
  post 'session_helper/register'
  get 'session_helper/register'
  post 'session_helper/login'
  get 'session_helper/login'

  # Routes for trip
  post 'trip/new'

  get 'trip/new'
  post 'trip/create'
  get 'trip/selectTrip'
  post 'trip/selectedTrip'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
