class Spree::StoreController
  before_filter :load_taxonomies
  # include HighVoltage::StaticPage

  def load_taxonomies
    @taxonomies = Spree::Taxonomy.includes(root: :children)
  end
end
