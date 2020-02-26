module Api
  class Base < Grape::API
    mount Api::V1::Base
    mount Api::V1::AuthController
  end
end
