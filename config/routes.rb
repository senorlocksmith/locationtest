Rails.application.routes.draw do
  
  match "calendar/data", :to => "calendar#data", :as => "data", :via => "get"
  match "calendar/db_action", :to => "calendar#db_action", :as => "db_action", :via => "post"
  resources :calendar
  resources :properties
  resources :projects do
    resources :settings
    end
 


  
  root :to => 'projects#index'
end
