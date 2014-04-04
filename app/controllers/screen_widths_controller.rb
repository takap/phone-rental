class ScreenWidthsController < ApplicationController
  before_action :set_screen_width, only: [:show, :edit, :update, :destroy]

  # GET /screen_widths
  # GET /screen_widths.json
  def index
    @screen_widths = ScreenWidth.all
  end

  # GET /screen_widths/1
  # GET /screen_widths/1.json
  def show
  end

  # GET /screen_widths/new
  def new
    @screen_width = ScreenWidth.new
  end

  # GET /screen_widths/1/edit
  def edit
  end

  # POST /screen_widths
  # POST /screen_widths.json
  def create
    @screen_width = ScreenWidth.new(screen_width_params)

    respond_to do |format|
      if @screen_width.save
        format.html { redirect_to @screen_width, notice: 'Screen width was successfully created.' }
        format.json { render action: 'show', status: :created, location: @screen_width }
      else
        format.html { render action: 'new' }
        format.json { render json: @screen_width.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /screen_widths/1
  # PATCH/PUT /screen_widths/1.json
  def update
    respond_to do |format|
      if @screen_width.update(screen_width_params)
        format.html { redirect_to @screen_width, notice: 'Screen width was successfully updated.' }
        format.json { render action: 'show', status: :ok, location: @screen_width }
      else
        format.html { render action: 'edit' }
        format.json { render json: @screen_width.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /screen_widths/1
  # DELETE /screen_widths/1.json
  def destroy
    @screen_width.destroy
    respond_to do |format|
      format.html { redirect_to screen_widths_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_screen_width
      @screen_width = ScreenWidth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def screen_width_params
      params.require(:screen_width).permit(:size)
    end
end
