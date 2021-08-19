Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/' =>'test#index'
  get '/new' =>'test#new'
  post '/create' => 'test#create'
  get '/show/:post_id' => 'test#show'
  get '/edit/:post_id' => 'test#edit'
  post '/update/:post_id' => 'test#update'
  get '/delete/:post_id' => 'test#delete'
end
