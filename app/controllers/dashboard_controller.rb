class DashboardController < ApplicationController
  def index
    if current_user.has_role? :admin
      redirect_to dashboard_admin_path
      return false
    end
    repo = ChecksRepository.new
    @checks = repo.get_checks_on_client_dashboard_by_user_id current_user.id
  end

  def admin
    unless current_user.has_role? :admin
      redirect_to dashboard_index_path
      return false
    end
    repo = ChecksRepository.new
    @reserved_checks = repo.get_reserved_checks_on_admin_dashboard
    @ready_checks = repo.get_ready_checks_on_admin_dashboard
    @checked_out_checks = repo.get_checked_out_checks_on_admin_dashboard
  end
end
