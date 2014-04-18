class DashboardController < ApplicationController
  def index
    if current_user.has_role? :admin
      redirect_to action: 'admin'
      return false
    end
    redirect_to action: 'client'
  end

  def admin
    repo = ChecksRepository.new
    @reserved_checks = repo.get_reserved_checks_on_admin_dashboard
    @ready_checks = repo.get_ready_checks_on_admin_dashboard
    @unavailable_checks = repo.get_unavailable_checks_on_admin_dashboard
  end

  def client
    repo = ChecksRepository.new
    @checks = repo.get_checks_on_client_dashboard_by_user_id current_user.id
  end
end
