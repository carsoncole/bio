class HomeController < PublicController

  def index
    @experiences = Experience.all
  end
end
