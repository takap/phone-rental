class ChecksController < ApplicationController
  def new
    @check = Check.new terminal_id: params[:terminal_id]
  end

  def create
    repo = ChecksRepository.new
    repo.create(current_user.id, check_params)
    redirect_to '/'
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
    redirect_to '/'
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def check_params
    params.require(:check).permit(:terminal_id, :take_out, :note, :due_date)
  end
end
