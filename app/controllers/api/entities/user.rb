module Api
  module Entities
    class User < Grape::Entity
      expose :first_name, :last_name
    end
  end
end
