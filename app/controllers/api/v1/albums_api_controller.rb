module Api
  class V1::AlbumsApiController < Grape::API

    before {authenticate}
    namespace :albums do
      desc 'Albums'
      get '' do
        albums = Album.all
        present albums, with: Api::Entities::AlbumEntity::Full
      end
    end
  end
end



