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
  end

  def update
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def check_params
    params.require(:check).permit(:terminal_id, :take_out, :note, :due_date)
  end
end
