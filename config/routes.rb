Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount Versions::V1::Api => '/'
  mount GrapeSwaggerRails::Engine => '/api/swagger'
end
