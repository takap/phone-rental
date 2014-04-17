module CheckBaseDecorator
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
end