module CheckDecorator
  include CheckBaseDecorator

  def next_status_class
    case status
      when CHECK_STATUS_DOMAIN.AVAILABLE
        CHECK_BUTTON_CLASS.RESERVED
      when CHECK_STATUS_DOMAIN.RESERVED
        CHECK_BUTTON_CLASS.READY
      when CHECK_STATUS_DOMAIN.READY
        CHECK_BUTTON_CLASS.UNAVAILABLE
      when CHECK_STATUS_DOMAIN.UNAVAILABLE
        CHECK_BUTTON_CLASS.AVAILABLE
      when CHECK_STATUS_DOMAIN.UNAVAILABLE_OVERDUE
        CHECK_BUTTON_CLASS.AVAILABLE
      when CHECK_STATUS_DOMAIN.OWED_BY_CURRENT_USER
        CHECK_BUTTON_CLASS.AVAILABLE
      when CHECK_STATUS_DOMAIN.OWED_BY_CURRENT_USER_OVERDUE
        CHECK_BUTTON_CLASS.AVAILABLE
    end
  end

  def submit_button_value
    case status
      when CHECK_STATUS_DOMAIN.AVAILABLE
        t('view.reserved')
      when CHECK_STATUS_DOMAIN.RESERVED
        t('view.ready')
      when CHECK_STATUS_DOMAIN.READY
        t('view.unavailable')
      when CHECK_STATUS_DOMAIN.UNAVAILABLE
        t('view.available')
      when CHECK_STATUS_DOMAIN.UNAVAILABLE_OVERDUE
        t('view.available')
      when CHECK_STATUS_DOMAIN.OWED_BY_CURRENT_USER
        t('view.available')
      when CHECK_STATUS_DOMAIN.OWED_BY_CURRENT_USER_OVERDUE
        t('view.available')
    end
  end

end