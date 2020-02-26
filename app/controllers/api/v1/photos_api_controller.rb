module Api
  class V1::PhotosApiController < Grape::API

    before {authenticate}
    namespace :photos do
      desc 'Photos'
      get '' do
        photos = Photo.all
        present photos, with: Api::Entities::PhotoEntity
      end
    end
  end
end

