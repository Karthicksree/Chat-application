module API::V1
  class Base < API::ApplicationAPI
    version "v1", :using => :path
    mount PostAPI
    mount UserAPI
  end
end