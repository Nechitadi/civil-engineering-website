class LeadsController < ApplicationController
  def create
    Lead.create(lead_params)
  end

  private

  def lead_params
    params.require(:lead).permit(:first_name, :last_name, :phone, :email, :company, :description)
  end
end
