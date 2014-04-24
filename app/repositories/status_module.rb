module StatusModule

  def check_status(check)
    status = check['status']
    if status == CHECK_STATUS_DB.AVAILABLE
      CHECK_STATUS_DOMAIN.AVAILABLE
    elsif status == CHECK_STATUS_DB.RESERVED
      CHECK_STATUS_DOMAIN.RESERVED
    elsif status == CHECK_STATUS_DB.READY
      CHECK_STATUS_DOMAIN.READY
    elsif status == CHECK_STATUS_DB.CHECKED_OUT
      if !is_current_user?(check) && !is_overdue?(check)
        CHECK_STATUS_DOMAIN.CHECKED_OUT
      elsif !is_current_user?(check) && is_overdue?(check)
        CHECK_STATUS_DOMAIN.CHECKED_OUT_OVERDUE
      elsif is_current_user?(check) && !is_overdue?(check)
        CHECK_STATUS_DOMAIN.OWED_BY_CURRENT_USER
      elsif is_current_user?(check) && is_overdue?(check)
        CHECK_STATUS_DOMAIN.OWED_BY_CURRENT_USER_OVERDUE
      end
    end
  end

  def format_date(date)
    date.present? ? date.strftime('%Y/%m/%d') : I18n.t('view.na')
  end

  def format_datetime(date)
    date.present? ? date.strftime('%Y/%m/%d %H:%M:%S') : I18n.t('view.na')
  end

  def is_overdue?(check)
    due_date = check['due_date']
    if due_date.present?
      due_date < Date.today
    else
      false
    end
  end

  def is_current_user?(check)
    check['user_id'] == @current_user_id
  end

  def next_status(state)
    case state[:status]
      when CHECK_STATUS_DB.AVAILABLE
        CHECK_STATUS_DB.RESERVED
      when CHECK_STATUS_DB.RESERVED
        CHECK_STATUS_DB.READY
      when CHECK_STATUS_DB.READY
        CHECK_STATUS_DB.CHECKED_OUT
      when CHECK_STATUS_DB.CHECKED_OUT
        CHECK_STATUS_DB.AVAILABLE
      else
        CHECK_STATUS_DB.AVAILABLE
    end
  end

end