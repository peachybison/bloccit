class PostsController < ApplicationController
  def index
    @posts = Post.all 
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(params.require(:post).permit(:title, :body))
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

before_action :configure_permitted_parameters, if: :devise_controller?
 
   protected
 
   def configure_permitted_parameters
     devise_parameter_sanitizer.for(:sign_up) << :name
   end
 

before_action :flash_attack

  private

  def flash_attack
    flash[:notice] = "Flash Attack - Flash Attack"
  end

skip_before_action :flash_attack, only: [:new, :index]

end


