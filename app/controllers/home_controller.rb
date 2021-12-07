class HomeController < PublicController

  def index
    @experiences = Experience.order(start_date: :desc)
  end
end
