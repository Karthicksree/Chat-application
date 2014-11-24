module API::V1
  class PostAPI < Base

  # 	get "/posts/:id", :rabl => "post" do
  #   @post = Post.find(params[:id])
  # end

  resource "posts" do
      get do
        Post.all
      end
 
      get ':id' do
        Post.find(params[:id])
      end
    

    #Create a post

      post do
        # authenticate!
        Post.create!({
          title: params[:title],
          text: params[:text]
        })
      end

      #Update a post
   
      put ':id' do
        # authenticate!
        Post.find(params[:id]).update({
         title: params[:title],
          text: params[:text]
        })
      end

      #delete a post

      delete ':id' do
      	 Post.find(params[:id]).destroy
      end
  end
  end
end