module Api
  class V1::UsersController < Grape::API
    namespace :users do
      params do
        requires :user, type: Hash do
          requires :email, type: String
          requires :password, type: String
        end
      end
      post do
        entity = User.new(declared_params[:user])

        if entity.save
          present :entity, entity, with: Api::Entities::UserEntity::Full
        else
          error!(entity.errors.messages, 422)
        end
      end


      namespace :me do
        get do
          present :entity, current_user, with: Api::Entities::UserEntity::Full
        end
      end
    end
  end
end
