module Api
  module Entities
    class Album < Grape::Entity

      expose :name, as: :album_name
      expose :updated_at, as: :last_change
      expose :album_author do
        expose :user, merge: true, using: Api::Entities::User

        # expose :count_of_photo do
        #   expose :photos.count, merge: true, using: Api::Entities::Photo
        # end
      end
    end
  end
end
# Album name
# Amount of photos
# Album author
# The date of the last change
