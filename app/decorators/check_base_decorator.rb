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
      when CHECK_STATUS_DOMAIN.UNAVAILABLE
        t('view.unavailable')
      when CHECK_STATUS_DOMAIN.UNAVAILABLE_OVERDUE
        t('view.unavailable_overdue')
      when CHECK_STATUS_DOMAIN.OWED_BY_CURRENT_USER
        t('view.unavailable')
      when CHECK_STATUS_DOMAIN.OWED_BY_CURRENT_USER_OVERDUE
        t('view.unavailable_overdue')
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
      when CHECK_STATUS_DOMAIN.UNAVAILABLE
        CHECK_BUTTON_CLASS.UNAVAILABLE
      when CHECK_STATUS_DOMAIN.UNAVAILABLE_OVERDUE
        CHECK_BUTTON_CLASS.UNAVAILABLE_OVERDUE
      when CHECK_STATUS_DOMAIN.OWED_BY_CURRENT_USER
        CHECK_BUTTON_CLASS.OWED_BY_CURRENT_USER
      when CHECK_STATUS_DOMAIN.OWED_BY_CURRENT_USER_OVERDUE
        CHECK_BUTTON_CLASS.OWED_BY_CURRENT_USER_OVERDUE
    end
  end

end