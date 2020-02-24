module Api
  module Entities
    class PhotoEntity < Grape::Entity

      expose :image
      expose :created_at
      expose :related_album do
        expose :album, merge: true, using: Api::Entities::AlbumEntity
      end

    end
  end
end
