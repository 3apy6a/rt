module Api
  module Entities::AlbumEntity
    class Short < Grape::Entity

      expose :name, as: :album_name
      expose :album_author do
        expose :user, merge: true, using: Api::Entities::UserEntity::Short
      end
    end

    class Full < Short
      expose :updated_at
      expose :photos_count
    end
  end
end
