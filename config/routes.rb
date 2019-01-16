Rails.application.routes.draw do
  resources :dogs, only: %i[index show]
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'dogs', to: 'dogs#index_sort', as: 'sort_dogs'
  post 'dogs', to: 'dogs#sort'

end
