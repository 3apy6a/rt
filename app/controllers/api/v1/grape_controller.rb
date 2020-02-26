require 'grape-swagger'
module Api
  class V1::GrapeController < Grape::API

    extend ActionView::Helpers::TranslationHelper
    prefix 'api'
    version 'v1', using: :accept_version_header
    # default_format :json
    format :json

    helpers Api::Helpers::ApiHelper
    helpers Api::Helpers::AuthenticationHelper

    mount Api::V1::Auth
    mount Api::V1::UsersController
    mount Api::V1::AlbumsApiController
    mount Api::V1::PhotosApiController

    add_swagger_documentation api_version: 'v1', hide_documentation_path: true
  end
end
