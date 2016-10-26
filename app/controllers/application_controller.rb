class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :load_taxonomies
  # include HighVoltage::StaticPage

  def load_taxonomies
    @taxonomies = Spree::Taxonomy.includes(root: :children)
  end

end
