class ScreenDensitiesController < ApplicationController
  before_action :set_screen_density, only: [:show, :edit, :update, :destroy]
  authorize_actions_for User

  # GET /screen_densities
  # GET /screen_densities.json
  def index
    @screen_densities = ScreenDensity.all
  end

  # GET /screen_densities/1
  # GET /screen_densities/1.json
  def show
  end

  # GET /screen_densities/new
  def new
    @screen_density = ScreenDensity.new
  end

  # GET /screen_densities/1/edit
  def edit
  end

  # POST /screen_densities
  # POST /screen_densities.json
  def create
    @screen_density = ScreenDensity.new(screen_density_params)

    respond_to do |format|
      if @screen_density.save
        format.html { redirect_to @screen_density, notice: 'Screen density was successfully created.' }
        format.json { render action: 'show', status: :created, location: @screen_density }
      else
        format.html { render action: 'new' }
        format.json { render json: @screen_density.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /screen_densities/1
  # PATCH/PUT /screen_densities/1.json
  def update
    respond_to do |format|
      if @screen_density.update(screen_density_params)
        format.html { redirect_to @screen_density, notice: 'Screen density was successfully updated.' }
        format.json { render action: 'show', status: :ok, location: @screen_density }
      else
        format.html { render action: 'edit' }
        format.json { render json: @screen_density.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /screen_densities/1
  # DELETE /screen_densities/1.json
  def destroy
    @screen_density.destroy
    respond_to do |format|
      format.html { redirect_to screen_densities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_screen_density
      @screen_density = ScreenDensity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def screen_density_params
      params.require(:screen_density).permit(:size)
    end
end
