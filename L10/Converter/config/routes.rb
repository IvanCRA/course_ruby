Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'public/format.xslt', to: redirect('calc/format_xslt')
  get 'calc/viewer' #############
  get 'calc/format_xslt'
  get 'calc/view'
  get 'calc/xml', to: 'calc#xml', format: 'xml'
  get '/', to: redirect('calc/viewer') ############

end
