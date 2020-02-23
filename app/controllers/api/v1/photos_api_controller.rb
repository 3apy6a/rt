module Api
  module V1
    class PhotosApiController < Grape::API
      include Api::V1::Defaults

      namespace :photos do
        desc 'Photos info'
        get '' do
          photos = Photo.all
          present photos, with: Api::Entities::Photo
        end
      end
    end
  end
end

