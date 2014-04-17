class DashboardController < ApplicationController
  def index
    if current_user.has_role? :admin
      redirect_to action: 'admin'
      return false
    end
    redirect_to action: 'client'
  end

  def admin
  end

  def client
    repo = ChecksRepository.new
    @checks = repo.get_checks_on_dashboard_by_user_id current_user.id
  end
end
