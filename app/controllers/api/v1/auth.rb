module Api
  class V1::Auth < Grape::API
    require 'jwt'

    namespace :auth do
      params do
        requires :email, type: String
        requires :password, type: String
      end

      post do
        entity = User.authenticate(declared_params[:email], declared_params[:password])

        if entity.present?
          present :token, entity.auth_token
          present :entity, entity, with: Api::Entities::UserEntity::Full
        else
          unauthorized!
        end
      end
    end
  end
end
