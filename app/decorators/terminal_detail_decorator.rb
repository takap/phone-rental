module TerminalDetailDecorator

  def check_view
    if status.present?
      content_tag(:div, class: 'btn btn-danger') do t('view.unavailable') end
    else
      link_to t('view.new_check'), checks_new_path(terminal_id: terminal_id), class: 'btn btn-primary'
    end
  end
end