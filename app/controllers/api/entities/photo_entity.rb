module Api
  module Entities
    class Photo < Grape::Entity

      expose :image
      expose :created_at
      expose :related_album do
        expose :album, merge: true, using: Api::Entities::Album
      end
    end
  end
end
