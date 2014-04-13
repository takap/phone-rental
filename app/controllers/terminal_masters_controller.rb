class TerminalMastersController < ApplicationController
  before_action :set_terminal_master, only: [:show, :edit, :update, :destroy]
  authorize_actions_for User

  # GET /terminal_masters
  # GET /terminal_masters.json
  def index
    @terminal_masters = TerminalMaster.all
  end

  # GET /terminal_masters/1
  # GET /terminal_masters/1.json
  def show
  end

  # GET /terminal_masters/new
  def new
    @terminal_master = TerminalMaster.new
  end

  # GET /terminal_masters/1/edit
  def edit
  end

  # POST /terminal_masters
  # POST /terminal_masters.json
  def create
    @terminal_master = TerminalMaster.new(terminal_master_params)

    respond_to do |format|
      if @terminal_master.save
        format.html { redirect_to @terminal_master, notice: 'Terminal master was successfully created.' }
        format.json { render action: 'show', status: :created, location: @terminal_master }
      else
        format.html { render action: 'new' }
        format.json { render json: @terminal_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /terminal_masters/1
  # PATCH/PUT /terminal_masters/1.json
  def update
    respond_to do |format|
      if @terminal_master.update(terminal_master_params)
        format.html { redirect_to @terminal_master, notice: 'Terminal master was successfully updated.' }
        format.json { render action: 'show', status: :ok, location: @terminal_master }
      else
        format.html { render action: 'edit' }
        format.json { render json: @terminal_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /terminal_masters/1
  # DELETE /terminal_masters/1.json
  def destroy
    @terminal_master.destroy
    respond_to do |format|
      format.html { redirect_to terminal_masters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_terminal_master
      @terminal_master = TerminalMaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def terminal_master_params
      params.require(:terminal_master).permit(:carrier_id, :maker_id, :series_id, :model_id, :default_os_id, :screen_inch_id, :screen_width_id, :screen_height_id, :screen_density_id, :release_date, :tablet, :nfc)
    end
end
