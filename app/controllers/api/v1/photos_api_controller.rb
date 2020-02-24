module Api
  module V1
    class PhotosApiController < Grape::API
      include Api::V1::Defaults

      namespace :photos do
        desc 'Photos'
        get '' do
          photos = Photo.all
          present photos, with: Api::Entities::PhotoEntity
        end
      end
    end
  end
end

