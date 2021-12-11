class SettingsController < InternalController
  before_action :set_setting, only: %i[ show edit update destroy ]

  # GET /settings/1 or /settings/1.json
  def show
  end

  # GET /settings/new
  def new
    @setting = Setting.new
  end

  def edit
  end

  # POST /settings or /settings.json
  def create
    @setting = Setting.new(setting_params)

    if @setting.save
      redirect_to edit_setting_path(1), notice: "Setting was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /settings/1 or /settings/1.json
  def update
    respond_to do |format|
      if @setting.update(setting_params)
        format.html { redirect_to @setting, notice: "Setting was successfully updated." }
        format.json { render :show, status: :ok, location: @setting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @setting.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_setting
      @setting = Setting.first
      redirect_to new_setting_path unless @setting
    end

    # Only allow a list of trusted parameters through.
    def setting_params
      params.require(:setting).permit(:name, :description, :address, :email, :phone, :status, :education, :meta_title, :meta_description, :open_source, :resume_url)
    end
end
