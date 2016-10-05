class PagesController < Spree::StoreController
  include HighVoltage::StaticPage

  layout 'spree/layouts/spree_application'

  private

  # def layout_for_page
  #   case params[:id]
  #   when 'home'
  #     'home'
  #   else
  #     'application'
  #   end
  # end
end
