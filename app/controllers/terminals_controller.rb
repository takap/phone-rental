class TerminalsController < ApplicationController
  before_action :set_terminal, only: [:edit, :update, :destroy]

  # GET /terminals
  # GET /terminals.json
  def index
    terminals_repo = TerminalsRepository.new
    if @query = params[:q].presence
      @terminals = terminals_repo.find_by_search_words @query
      @title = t('terminals.index.search_title', key: @query)
    else
      @terminals = terminals_repo.find_detail
      @title = t('terminals.index.title')
    end
  end

  # GET /terminals/ios
  # GET /terminals/ios.json
  def ios
    terminals_repo = TerminalsRepository.new
    @terminals = terminals_repo.find_ios
    @title = t('terminals.index.title')
  end

  # GET /terminals/android
  # GET /terminals/android.json
  def android
    terminals_repo = TerminalsRepository.new
    @terminals = terminals_repo.find_android
    @title = t('terminals.index.title')
  end

  # GET /terminals/feature
  # GET /terminals/feature.json
  def feature
    terminals_repo = TerminalsRepository.new
    @terminals = terminals_repo.find_feature
    @title = t('terminals.index.title')
  end

  # GET /terminals/1
  # GET /terminals/1.json
  def show
    terminals_repo = TerminalsRepository.new
    @terminal = terminals_repo.find_detail_by_id params[:id]
    @check = CheckState.where(terminal_id: params[:id]).first
  end

  # GET /terminals/new
  def new
    @terminal = Terminal.new
  end

  # GET /terminals/1/edit
  def edit
  end

  # POST /terminals
  # POST /terminals.json
  def create
    @terminal = Terminal.new(terminal_params)

    respond_to do |format|
      if @terminal.save
        format.html { redirect_to @terminal, notice: 'Terminal was successfully created.' }
        format.json { render action: 'show', status: :created, location: @terminal }
      else
        format.html { render action: 'new' }
        format.json { render json: @terminal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /terminals/1
  # PATCH/PUT /terminals/1.json
  def update
    respond_to do |format|
      if @terminal.update(terminal_params)
        format.html { redirect_to @terminal, notice: 'Terminal was successfully updated.' }
        format.json { render action: 'show', status: :ok, location: @terminal }
      else
        format.html { render action: 'edit' }
        format.json { render json: @terminal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /terminals/1
  # DELETE /terminals/1.json
  def destroy
    @terminal.destroy
    respond_to do |format|
      format.html { redirect_to terminals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_terminal
      @terminal = Terminal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def terminal_params
      params.require(:terminal).permit(:name, :terminal_master_id, :volume, :color, :updated_os, :phone_number, :sim, :wifi, :note)
    end
end
