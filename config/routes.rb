Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :cities do
  member do
    post :update_temp
  end
end 

end
