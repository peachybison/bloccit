class PostPolicy < ApplicationPolicy

  def index?
    true
  end

  class Scope
    attr_reader :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      if @current_user.admin? 
        scope.all
      else
        scope.where(Post.find(params[:user]) == @user)
      end
    end

  end

  # def update?
  #   user.admin? or not post.published?
  # end

end