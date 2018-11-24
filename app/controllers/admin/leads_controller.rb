class Admin::LeadsController < Admin::BaseController
  def index
    @leads = Lead.all
  end
end
