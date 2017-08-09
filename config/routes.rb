Rails.application.routes.draw do
  get 'books/index'
  get 'books', to: 'books#index'

  get 'books/:id', to: 'books#show'

  get 'books/add'
  post 'books/add'

  get 'books/edit/:id', to: 'books#edit'
  patch 'books/edit/:id', to: 'books#edit'

  get 'cards/index'
	get 'cards', to: 'cards#index'
	
  get 'cards/add'
	post 'cards/add'
	
  get 'cards/:id', to: 'cards#show'
	
  get 'cards/edit/:id', to: 'cards#edit'
  patch 'cards/edit/:id', to: 'cards#edit'
  
  get 'cards/delete/:id', to: 'cards#delete'
  

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
