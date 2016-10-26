class LeadsController < Spree::StoreController
  def create
    @lead = Lead.new lead_params
    if @lead.save
      cookies[:saved_lead] = true
      redirect_to root_path, notice: "Thank you for signing up for our newletter!"
    else
      redirect_to root_path, notice: "Something went wrong, please try again."
    end
  end


  private

    def lead_params
      params.require(:lead).permit(:name, :email, :country)
    end
end
