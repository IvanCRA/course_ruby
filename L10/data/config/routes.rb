Rails.application.routes.draw do 
  #root 'calc#input'
  get '/calc/view.xml', to: 'calc#view', format: 'xml'
  get '/calc/view', to: redirect('/calc/view.xml')
  get '/', to: redirect('/calc/view')

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
