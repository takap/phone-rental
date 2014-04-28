class ChecksController < ApplicationController
  def new
    @check = Check.new terminal_id: params[:terminal_id]
  end

  def create
    repo = ChecksRepository.new
    check_result = repo.create(current_user.id, check_params)
    check_state = repo.get_check_by_check_id(check_result.id)
    terminal = Terminal.where(id: check_params[:terminal_id]).first
    terminal_master = TerminalMaster.where(id: terminal[:terminal_master_id]).first
    redirect_to '/'
    flash[:success] = t('view.check_create_message', terminal_name: terminal_master.model_name)
    NoticeMailer.sendmail_reserved_to_client(current_user, terminal_master, check_state).deliver
  end

  def show
    repo = ChecksRepository.new
    @check = repo.get_check_by_check_id(params[:id])
    @user = User.where(id: @check.user_id).first
    @terminal = Terminal.where(id: @check.terminal_id).first
  end

  def update
    repo = ChecksRepository.new
    repo.update(current_user.id, check_params)
    terminal = Terminal.where(id: check_params[:terminal_id]).first
    terminal_master = TerminalMaster.where(id: terminal[:terminal_master_id]).first
    redirect_to '/'
    flash[:success] = t('view.check_update_message', terminal_name: terminal_master.model_name)
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def check_params
    params.require(:check).permit(:terminal_id, :take_out, :note, :due_date)
  end
end
