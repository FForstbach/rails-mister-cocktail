Rails.application.routes.draw do
  get 'new/create'

  get 'new/destroy'

  get 'ingredients/index'

  get 'cocktails/index'

  get 'cocktails/show'

  get 'cocktails/new'

  get 'cocktails/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
