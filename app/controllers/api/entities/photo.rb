module Api
  module Entities
    class Photo < Grape::Entity
      expose :created_at
      expose :album_id, as: :related_album
      expose :related_album do
        expose :album, merge: true, using: Api::Entities::Album
      end
    end
  end
end
# Url
# Upload date
# Author
# Related album
