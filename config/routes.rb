Rails.application.routes.draw do
 resources :pages do
  member do
    put 'like', to: "pages#like"
    put 'unlike', to: "pages#unlike"
  end
end
  devise_for :users
  
  root'tests#index'
  
  get'/tests'=>'tests#index'
  get'/tests/about'
  get'/tests/contact'
  get'/tests/help'
 
end
