class SettingsController < ApplicationController
  before_action :get_project
  before_action :set_setting, only: [:show, :edit, :update, :destroy]

  # GET /settings
  # GET /settings.json
  def index
    @settings = @project.settings.to_a
  end

  # GET /settings/1
  # GET /settings/1.json
  def show
  end

  # GET /settings/new
  def new
    @setting = @project.settings.build
  end

  # GET /settings/1/edit
  def edit
  end

  # POST /settings
  # POST /settings.json
  def create
    @setting = @project.settings.build(setting_params)

    respond_to do |format|
      if @setting.save
        format.html { redirect_to project_settings_path(@project), notice: 'Setting was successfully created.' }
        format.json { render :show, status: :created, location: @setting }
      else
        format.html { render :new }
        format.json { render json: @setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /settings/1
  # PATCH/PUT /settings/1.json
  def update
    respond_to do |format|
      if @setting.update(setting_params)
        format.html { redirect_to project_settings_path(@project), notice: 'Setting was successfully updated.' }
        #format.json { render :show, status: :ok, location: @setting }
      else
        format.html { render :edit }
        format.json { render json: @setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /settings/1
  # DELETE /settings/1.json
  def destroy
    @setting.destroy
    respond_to do |format|
      format.html { redirect_to project_settings_path(@project), notice: 'Setting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def get_project
      @project = Project.find(params[:project_id])
    end


    def set_setting
      @setting = @project.settings.find(params[:id])
    end

    

    # Only allow a list of trusted parameters through.
    def setting_params
      params.require(:setting).permit(:name, :placement, :description, :s_filming_date, :e_filming_date, :project_id, property_ids:[])
    end
end
