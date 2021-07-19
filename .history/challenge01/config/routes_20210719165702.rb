Rails.application.routes.draw do
  get 'person/index'
  get 'person/show'
  get 'person/new'
  get 'person/edit'
  get 'person/full_name'
  get 'person/imc'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
