class ScreenHeightsController < ApplicationController
  before_action :set_screen_height, only: [:show, :edit, :update, :destroy]

  # GET /screen_heights
  # GET /screen_heights.json
  def index
    @screen_heights = ScreenHeight.all
  end

  # GET /screen_heights/1
  # GET /screen_heights/1.json
  def show
  end

  # GET /screen_heights/new
  def new
    @screen_height = ScreenHeight.new
  end

  # GET /screen_heights/1/edit
  def edit
  end

  # POST /screen_heights
  # POST /screen_heights.json
  def create
    @screen_height = ScreenHeight.new(screen_height_params)

    respond_to do |format|
      if @screen_height.save
        format.html { redirect_to @screen_height, notice: 'Screen height was successfully created.' }
        format.json { render action: 'show', status: :created, location: @screen_height }
      else
        format.html { render action: 'new' }
        format.json { render json: @screen_height.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /screen_heights/1
  # PATCH/PUT /screen_heights/1.json
  def update
    respond_to do |format|
      if @screen_height.update(screen_height_params)
        format.html { redirect_to @screen_height, notice: 'Screen height was successfully updated.' }
        format.json { render action: 'show', status: :ok, location: @screen_height }
      else
        format.html { render action: 'edit' }
        format.json { render json: @screen_height.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /screen_heights/1
  # DELETE /screen_heights/1.json
  def destroy
    @screen_height.destroy
    respond_to do |format|
      format.html { redirect_to screen_heights_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_screen_height
      @screen_height = ScreenHeight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def screen_height_params
      params.require(:screen_height).permit(:size)
    end
end
