Rails.application.routes.draw do

  get 'credit_cards/open'
  get 'credit_cards/debit'
  get 'credit_cards/credit'
  get 'credit_cards/close'

  # ROOT ROUTE
  root 'demo#index'

  # SIMPLE MATCH ROUTE
  get 'demo/index'
  get 'demo/hello'
  get 'demo/other_hello'
  get 'demo/lynda'

  match "moMoneyHoney", :to => "credit_cards#credit",
  :via => :get

  # long version match to demo controler index action for a get request
  # match "demo/index", :to => "demo#index",
  # :via => :get

  # DEFAULT ROUTE
  # :controller/:action/:id
  # GET /students/edit/52
  # StudentsController, edit action, id =

  # get ':controller(/:action(/:id))'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
