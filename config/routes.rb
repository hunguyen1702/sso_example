Rails.application.routes.draw do
  get 'saml/index'

  get 'saml/sso'

  post 'saml/acs'

  get 'saml/metadata'

  get 'saml/logout'
  post 'saml/logout'

  get 'static_pages/index'

  get 'static_pages/secret'

  root to: "static_pages#index"

  get 'static_pages/secret'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
