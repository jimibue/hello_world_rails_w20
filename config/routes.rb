Rails.application.routes.draw do
  # root route
  root "static_pages#home"

  #custom route
  get "/about", to: "static_pages#about"

  # resouces generates crud action routes in this case for pages
  resources :pages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
