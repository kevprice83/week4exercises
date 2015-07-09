Rails.application.routes.draw do
  
get '/contacts/favourites' => 'contacts#favourites'

resources :contacts, only: [:new, :create, :index, :show, :destroy]

patch '/contacts/:id' => 'contacts#favourite'



end
