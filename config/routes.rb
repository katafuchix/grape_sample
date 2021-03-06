Rails.application.routes.draw do
  #mount_devise_token_auth_for 'User', at: 'auth'
  mount_devise_token_auth_for 'User', at: '/api/v1/auth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount Versions::V1::Api => '/'
  mount GrapeSwaggerRails::Engine => '/api/swagger'

end
