class NoticeMailer < ActionMailer::Base
  default from: ENV['mailer_sender']

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_reserved_to_client.subject
  #
  def sendmail_reserved_to_client(user, terminal_master, check_state)
    @user = user
    @terminal_master = terminal_master
    @check_state = check_state

    mail to: user.email, subject: t('.subject', model_name: @terminal_master.model_name)
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_reserved_to_admin.subject
  #
  def sendmail_reserved_to_admin
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_ready_to_client.subject
  #
  def sendmail_ready_to_client
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_overdue_to_client.subject
  #
  def sendmail_overdue_to_client
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_overdue_to_admin.subject
  #
  def sendmail_overdue_to_admin
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_inventory_to_client.subject
  #
  def sendmail_inventory
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
