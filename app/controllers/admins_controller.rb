class AdminsController < UsersController
  before_filter :ensure_admin!
  
  private
  
  def ensure_admin!
    unless current_user.admin?
      sign_out current_user
  
      redirect_to root_path
  
      return false
    end
  end
  
  def make_tags
  end

  def delete_other_posts
  end

end