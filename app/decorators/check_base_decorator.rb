module CheckBaseDecorator
  def take_out_view
    take_out == 1 ? t('view.take_out_true') : t('view.take_out_false')
  end

  def note_view
    note.presence || t('view.na')
  end
  def status_view
    case status
      when CHECK_STATUS_DOMAIN.AVAILABLE
        t('view.available')
      when CHECK_STATUS_DOMAIN.RESERVED
        t('view.reserved')
      when CHECK_STATUS_DOMAIN.READY
        t('view.ready')
      when CHECK_STATUS_DOMAIN.CHECKED_OUT
        t('view.checked_out')
      when CHECK_STATUS_DOMAIN.CHECKED_OUT_OVERDUE
        t('view.checked_out_overdue')
      when CHECK_STATUS_DOMAIN.OWED_BY_CURRENT_USER
        t('view.checked_out')
      when CHECK_STATUS_DOMAIN.OWED_BY_CURRENT_USER_OVERDUE
        t('view.checked_out_overdue')
    end
  end

  def status_class
    case status
      when CHECK_STATUS_DOMAIN.AVAILABLE
        CHECK_BUTTON_CLASS.AVAILABLE
      when CHECK_STATUS_DOMAIN.RESERVED
        CHECK_BUTTON_CLASS.RESERVED
      when CHECK_STATUS_DOMAIN.READY
        CHECK_BUTTON_CLASS.READY
      when CHECK_STATUS_DOMAIN.CHECKED_OUT
        CHECK_BUTTON_CLASS.CHECKED_OUT
      when CHECK_STATUS_DOMAIN.CHECKED_OUT_OVERDUE
        CHECK_BUTTON_CLASS.CHECKED_OUT_OVERDUE
      when CHECK_STATUS_DOMAIN.OWED_BY_CURRENT_USER
        CHECK_BUTTON_CLASS.OWED_BY_CURRENT_USER
      when CHECK_STATUS_DOMAIN.OWED_BY_CURRENT_USER_OVERDUE
        CHECK_BUTTON_CLASS.OWED_BY_CURRENT_USER_OVERDUE
    end
  end

end