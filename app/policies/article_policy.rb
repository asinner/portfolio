class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      #@user = user
      #@scope = scope
    end

    def resolve
      #if @user && @user.editor?
      #  scope.all
      #elsif @user && @user.author?
      #  scope.where(author_id: @user.id)
      #else
      #  scope.where(published: true)
      #end
    end
  end
  
  def index?
    @user.admin?
  end
  
  def edit?
    @user.admin?
  end
  
  def create?
    @user.admin?
  end
  
  def new?
    @user.admin?
  end
  
  def update?
    @user.admin?
  end
  
  def destroy?
    @user.admin?
  end
  
  def show?
    @record.published? || @user.admin?
  end
end
