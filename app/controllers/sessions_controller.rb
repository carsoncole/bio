class SessionsController < InternalController

  #TODO Log out functionality
  def logout
    redirect_to root_path
  end
end
