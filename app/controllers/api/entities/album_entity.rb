module Api
  module Entities
    class AlbumEntity < Grape::Entity

      expose :name, as: :album_name
      expose :updated_at, as: :last_change
      expose :album_author do
        expose :user, merge: true, using: Api::Entities::UserEntity
      end
    end
  end
end
