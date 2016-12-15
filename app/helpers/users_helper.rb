module UsersHelper
  def has_no_posts?
    @user.posts.count == 0
  end

  def has_no_comments?
    @user.comments.count == 0
  end

  def has_no_favorites?
    @user.favorites.count == 0
  end
end
