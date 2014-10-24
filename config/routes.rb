Rails.application.routes.draw do

  match 'procesar', to: 'registro#procesar', as: 'procesar', via: :post

  match 'formulario',to:'registro#formulario', as: 'formulario', via: :post

  match 'contacto',to:'home#contacto', as: 'contacto', via: [:get, :post]

  match 'localizacion',to:'home#localizacion', as: 'localizacion', via: :get

  match 'quienes_somos',to:'home#quienes_somos', as: 'conocenos', via: :get

  match 'servicios',to:'home#servicios', as: 'servicios', via: :get

  match 'despliegue', to: 'datos#index', as: 'despliegue', via: :get

  # match 'procesar', to: 'datos#proceso', as: 'procesar', via: :post

  match 'registro', to: 'datos#llenado', as: 'registro',via: :get

  root 'home#index'

  match '*a' => 'error#rutas', :via => [:get,:post]

end
