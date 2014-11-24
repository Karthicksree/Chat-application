class API::ApplicationAPI < Grape::API
  format :json
  formatter :json, Grape::Formatter::Rabl
  
  mount API::V1::Base
end