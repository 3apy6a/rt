module Api
  class Entities::PhotoEntity < Grape::Entity

    expose :image
    expose :created_at
    expose :related_album do
      expose :album, merge: true, using: Api::Entities::AlbumEntity::Short
    end

  end
end

