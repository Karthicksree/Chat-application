
module API::V1
  class UserAPI < Base

  # 	get '/user/:id', :rabl => "user" do
  #   @user = User.find(params[:id])
  # end
  
  # 	get '/users', :rabl => 'user' do
  #    @user = User.all
  # end

  resource "users" do
      get do
        User.all
      end
 
      get ':id' do
        User.find(params[:id])
      end
   end   
  end
end