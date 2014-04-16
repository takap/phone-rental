class ChecksRepository

  def create(current_user_id, check_params)
    due_date = Date.new(
        check_params['due_date(1i)'.to_sym].to_i,
        check_params['due_date(2i)'.to_sym].to_i,
        check_params['due_date(3i)'.to_sym].to_i
    )
    CheckEvent.create(
        terminal_id: check_params[:terminal_id],
        user_id: current_user_id,
        operator_id: current_user_id,
        operation: 'reserved',
        take_out: check_params[:take_out],
        note: check_params[:note],
        due_date: due_date
    )

    CheckState.create(
        terminal_id: check_params[:terminal_id],
        user_id: current_user_id,
        operation: 'reserved',
        take_out: check_params[:take_out],
        note: check_params[:note],
        due_date: due_date
    )
  end
end