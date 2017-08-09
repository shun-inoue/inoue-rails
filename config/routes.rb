Rails.application.routes.draw do
  get 'people/index'
  get 'people/add'
  get 'people', to: 'people#index'
  get 'people/:id', to: 'people#show'
  post 'people/add', to: 'people#create'
  get 'people/edit/:id', to: 'people#edit'
  patch 'people/edit/:id', to:'people#update'
  get 'people/delete/:id', to: 'people#delete'

get 'dengonban', to: 'dengonban#index'
post 'dengonban', to: 'dengonban#index'
get 'dengonban/index'
post 'dengonban/index'

end
