Rails.application.routes.draw do

  # Routes using gem devise for accounts
  devise_for :drivers
  devise_for :passengers

  # Root, Welcome page.
  root 'welcome#index'

  # Links for session auxiliary
  post 'session_helper/register'
  get 'session_helper/register'
  post 'session_helper/login'
  get 'session_helper/login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
