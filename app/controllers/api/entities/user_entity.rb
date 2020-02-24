module Api
  module Entities
    class UserEntity < Grape::Entity

      expose :first_name, :last_name
    end
  end
end
