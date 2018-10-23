class Admin::DashboardController < Admin::AdminController
  def index
    @data = DashboardFacade.new(current_user)
  end
end
