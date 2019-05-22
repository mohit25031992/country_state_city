Rails.application.routes.draw do

resources :countries do
  resources :states do
  resources :cities
  	
end
end


resources :countries do
  
  resources :cities
  	
end



 
end
