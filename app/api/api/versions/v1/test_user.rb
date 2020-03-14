module Versions
  module V1
    module TestUser
      extend ActiveSupport::Concern
      included do
        namespace :test do
          namespace :user do

            auth :grape_devise_token_auth, resource_class: :user

            helpers GrapeDeviseTokenAuth::AuthHelpers

            desc '認証のテスト ヘッダにaccess-token, client, uid が必要'
            get '' do
              authenticate_user!
              {
                message: 'test',
                current_user_uid: current_user.uid,
                authenticated?: authenticated?,
              }
            end

          end
        end
      end
    end
  end
end
