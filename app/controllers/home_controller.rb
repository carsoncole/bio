class HomeController < PublicController

  def index
    @experiences = Experience.order(end_date: :asc, start_date: :desc)
  end
end
