module Api
  module V1
    class AlbumsApiController < Grape::API
      include Api::V1::Defaults

      namespace :albums do
        desc 'Albums'
        get '' do
          albums = Album.all
          present albums, with: Api::Entities::AlbumEntity
        end
      end
    end
  end
end



