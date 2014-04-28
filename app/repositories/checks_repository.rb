class ChecksRepository
  include StatusModule

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
        status: CHECK_STATUS_DB.RESERVED,
        take_out: check_params[:take_out],
        note: check_params[:note],
        due_date: due_date
    )

    check_state = CheckState.where(terminal_id: check_params[:terminal_id]).first
    if check_state.blank?
      check_state = CheckState.create(
          terminal_id: check_params[:terminal_id],
          user_id: current_user_id,
          status: CHECK_STATUS_DB.RESERVED,
          take_out: check_params[:take_out],
          note: check_params[:note],
          due_date: due_date,
          created_at: DateTime.now,
          updated_at: DateTime.now,
      )
    else
      raise IllegalStateError
    end
    check_state
  end

  def update(current_user_id, check_params)
    @current_user_id = current_user_id
    check_state = CheckState.where(terminal_id: check_params[:terminal_id]).first
    next_status = next_status(check_state)

    CheckEvent.create(
        terminal_id: check_state[:terminal_id],
        user_id: check_state[:user_id],
        operator_id: current_user_id,
        status: next_status,
        take_out: check_state[:take_out],
        note: check_params[:note],
        due_date: check_state[:due_date]
    )

    if next_status == CHECK_STATUS_DB.AVAILABLE
      check_state.destroy
    else
      check_state.update_attributes(
          {
              status: next_status,
              note: check_params[:note],
          }
      )
    end
  end

  def get_checks_on_client_dashboard_by_user_id(user_id)
    checks = CheckState.find_detail_by_user_id user_id
    check_entities = []
    checks.each do |check|
      check_entity = CheckOnClientDashboard.new(
          check_id: check['check_id'],
          terminal_name: check['terminal_name'],
          status: check_status(check),
          take_out: check['take_out'],
          carrier_name: check['carrier_name'],
          maker_name: check['maker_name'],
          group_name: check['group_name'],
          model_name: check['model_name'],
          volume: check['volume'],
          due_date: format_date(check['due_date']),
          check_created_at: format_datetime(check['check_created_at']),
          check_updated_at: format_datetime(check['check_updated_at']),
      )
      check_entities << check_entity
    end
    check_entities
  end

  def get_reserved_checks_on_admin_dashboard
    checks = CheckState.find_detail_by_status 'reserved'
    get_checks_on_admin_dashboard(checks)
  end

  def get_ready_checks_on_admin_dashboard
    checks = CheckState.find_detail_by_status 'ready'
    get_checks_on_admin_dashboard(checks)
  end

  def get_checked_out_checks_on_admin_dashboard
    checks = CheckState.find_detail_by_status 'checked_out'
    get_checks_on_admin_dashboard(checks)
  end

  def get_check_by_check_id(id)
    check_state = CheckState.where(id: id).first
    Check.new(
        id: check_state[:id],
        terminal_id: check_state[:terminal_id],
        user_id: check_state[:user_id],
        status: check_status(check_state),
        take_out: check_state[:take_out],
        note: check_state[:note],
        due_date: format_date(check_state[:due_date]),
        created_at: format_datetime(check_state[:created_at]),
        updated_at: format_datetime(check_state[:updated_at]),
    )
  end

  private
    def get_checks_on_admin_dashboard(checks)
      check_entities = []
      checks.each do |check|
        check_entity = CheckOnAdminDashboard.new(
            check_id: check['check_id'],
            last_name: check['last_name'],
            first_name: check['first_name'],
            division: check['division'],
            terminal_name: check['terminal_name'],
            status: check_status(check),
            take_out: check['take_out'],
            carrier_name: check['carrier_name'],
            maker_name: check['maker_name'],
            group_name: check['group_name'],
            model_name: check['model_name'],
            volume: check['volume'],
            due_date: format_date(check['due_date']),
            check_created_at: format_datetime(check['check_created_at']),
            check_updated_at: format_datetime(check['check_updated_at']),
        )
        check_entities << check_entity
      end
      check_entities
    end

end