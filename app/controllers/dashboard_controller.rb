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
    @checks = CheckState.where(user_id: current_user.id)
  end
end
