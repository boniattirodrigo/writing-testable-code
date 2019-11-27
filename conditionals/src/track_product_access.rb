require_relative './ecommerce_a/track_product_access'
require_relative './ecommerce_b/track_product_access'
require_relative './ecommerce_c/track_product_access'

class TrackProductAccess
  def self.call(product)
    case product.partner
    when 'EcommerceA'
      EcommerceA::TrackProductAccess.call(product.id)
    when 'EcommerceB'
      EcommerceB::TrackProductAccess.call(product.id)
    when 'EcommerceC'
      EcommerceC::TrackProductAccess.call(product.id)
    else
      puts 'Partner not found'
    end
  end
end
