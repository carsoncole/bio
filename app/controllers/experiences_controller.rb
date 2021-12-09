class ExperiencesController < InternalController
  before_action :set_experience, only: %i[ edit update destroy ]

  def new
    @experience = Experience.new
  end

  def edit
  end

  def create
    @experience = Experience.new(experience_params)

    if @experience.save
      redirect_to root_path, notice: "Experience was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @experience.update(experience_params)
      redirect_to root_path, notice: "Experience was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @experience.destroy
    redirect_to experiences_url, notice: "Experience was successfully destroyed."
  end

  private
    def set_experience
      @experience = Experience.find(params[:id])
    end

    def experience_params
      params.require(:experience).permit(:title, :name, :url, :start_date, :end_date, :description)
    end
end
