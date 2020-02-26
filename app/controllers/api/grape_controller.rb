module Api
  class GrapeController < Grape::API
    mount Api::V1::GrapeController
  end
end
