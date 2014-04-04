class ScreenInchesController < ApplicationController
  before_action :set_screen_inch, only: [:show, :edit, :update, :destroy]

  # GET /screen_inches
  # GET /screen_inches.json
  def index
    @screen_inches = ScreenInch.all
  end

  # GET /screen_inches/1
  # GET /screen_inches/1.json
  def show
  end

  # GET /screen_inches/new
  def new
    @screen_inch = ScreenInch.new
  end

  # GET /screen_inches/1/edit
  def edit
  end

  # POST /screen_inches
  # POST /screen_inches.json
  def create
    @screen_inch = ScreenInch.new(screen_inch_params)

    respond_to do |format|
      if @screen_inch.save
        format.html { redirect_to @screen_inch, notice: 'Screen inch was successfully created.' }
        format.json { render action: 'show', status: :created, location: @screen_inch }
      else
        format.html { render action: 'new' }
        format.json { render json: @screen_inch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /screen_inches/1
  # PATCH/PUT /screen_inches/1.json
  def update
    respond_to do |format|
      if @screen_inch.update(screen_inch_params)
        format.html { redirect_to @screen_inch, notice: 'Screen inch was successfully updated.' }
        format.json { render action: 'show', status: :ok, location: @screen_inch }
      else
        format.html { render action: 'edit' }
        format.json { render json: @screen_inch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /screen_inches/1
  # DELETE /screen_inches/1.json
  def destroy
    @screen_inch.destroy
    respond_to do |format|
      format.html { redirect_to screen_inches_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_screen_inch
      @screen_inch = ScreenInch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def screen_inch_params
      params.require(:screen_inch).permit(:size)
    end
end
