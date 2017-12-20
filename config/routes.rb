Rails.application.routes.draw do
  get '/' => "home#top"
  get 'index' => 'post#index'

  get 'post/:id/edit' => 'post#edit'
  post 'post/:id/update' => 'post#update'
  post 'post/delete/:id' => 'post#delete'
  get 'post/new' => 'post#new'
  post 'post/create' => 'post#create'
  get 'post/:id' => 'post#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
