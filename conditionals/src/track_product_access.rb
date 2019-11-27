require 'active_support/inflector'
require_relative './ecommerce_a/track_product_access'
require_relative './ecommerce_b/track_product_access'
require_relative './ecommerce_c/track_product_access'

class TrackProductAccess
  def self.call(product)
    partner_module = product.partner.constantize
    partner_module::TrackProductAccess.call(product.id)
  end
end
