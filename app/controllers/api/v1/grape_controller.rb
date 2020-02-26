module Api
  module V1
    class Base < Grape::API
      mount Api::V1::AlbumsApiController
      mount Api::V1::PhotosApiController
    end
  end
end
