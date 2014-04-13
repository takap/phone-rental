class ChecksRepository

  def create(current_user_id, check_params)
    CheckEvent.create(
        terminal_id: check_params[:terminal_id],
        user_id: current_user_id,
        operator_id: current_user_id,
        operation: 'reserved',
        take_out: check_params[:take_out],
        note: check_params[:note],
        due_date: check_params[:due_date]
    )

    CheckState.create(
        terminal_id: check_params[:terminal_id],
        user_id: current_user_id,
        operation: 'reserved',
        take_out: check_params[:take_out],
        note: check_params[:note],
        due_date: check_params[:due_date]
    )
  end
end