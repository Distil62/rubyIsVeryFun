class DashboardFacade
  attr_reader :user

  def initialize(user)
    @user = user
  end

  def users
    User.all
  end

  def categories
    Category.all
  end

  def posts
    Post.all
  end

end