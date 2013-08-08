TalkingSlate::Application.routes.draw do
  resources :conferences


  resources :profiles

bigbluebutton_routes :default
  

  authenticated :user do
    root :to => 'profiles#new'
  end
  
  devise_for :users
  resources :users
end