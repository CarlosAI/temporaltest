Rails.application.routes.draw do
  resources :reporte_abusos
  resources :contratos
  resources :folio_abusos
  resources :abusos

  root "folio_abusos#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
