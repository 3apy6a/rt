module Api
  module Entities::UserEntity
    class Short < Grape::Entity
      expose :username
      expose :first_name
      expose :last_name
    end

    class Full < Short
      expose :id
      expose :email
    end
  end
end


