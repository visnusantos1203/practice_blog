Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/articles' => 'articles#index' # yung name before 'controller' lang, snake case, then #, then saang action or method pupunta(index)
  get '/articles/name/:name' => 'articles#find_name'
  get '/articles/new' => 'articles#new', as: 'article_new'
  get '/articles/:id' => 'articles#show', as: 'article_show'
  post '/articles' => 'articles#create', as: 'article_create' #yung 'as' yung ilalagay sa 'path' sa new.html.erb 
  get '/articles/show' => 'articles#show'
  get '/articles/edit/:id' => 'articles#edit', as: 'article_edit'
  post '/articles/:id' => 'articles#update', as: 'article_update'
  delete '/articles/:id' => 'articles#delete', as: 'delete'
end
