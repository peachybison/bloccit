class PostsController < ApplicationController
  def index
<<<<<<< HEAD
    @posts = Post.all 
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
   @post = Post.new(params.require(:post).permit(:title, :body))
   if @post.save
     flash[:notice] = "Post was saved."
     redirect_to @post
   else
     flash[:error] = "There was an error saving the post. Please try again."
     render :new
   end
 end

  def edit
    @post = Post.find(params[:id])
  end
end

  def update
   @post = Post.find(params[:id])
   if @post.update_attributes(params.require(:post).permit(:title, :body))
     flash[:notice] = "Post was updated."
     redirect_to @post
   else
     flash[:error] = "There was an error saving the post. Please try again."
     render :edit
   end

end 
=======
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id]) 
  end

  def new
  end

  def edit
  end
end
>>>>>>> 1cc99e7f5f05ad43273317b0f28dab1bf9d03829
