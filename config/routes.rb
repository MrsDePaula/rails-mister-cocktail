Rails.application.routes.draw do
  root to: 'cocktails#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create, :new]
  end
  resources :doses, only: [:destroy]
end

# 4 - Routing, Controller, Views for Doses
# A user can add a new dose (ingredient/description pair) to an existing cocktail
# Checkout simple_form docs about f.association to easily create a select dropdown for our list of ingredients.
# GET "cocktails/42/doses/new"
# POST "cocktails/42/doses"
# A user can delete a dose that belongs to an existing cocktail. How can we make a delete link again?
# DELETE "doses/25"
