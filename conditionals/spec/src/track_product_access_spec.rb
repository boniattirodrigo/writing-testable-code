require_relative '../spec_helper'
require_relative '../../src/track_product_access'
require_relative '../../src/ecommerce_a/track_product_access'
require_relative '../../src/ecommerce_b/track_product_access'
require_relative '../../src/ecommerce_c/track_product_access'

describe TrackProductAccess do
  describe '#call' do
    context 'when is a product from ecommerce A' do
      it 'tracks product from ecommerce A' do
        product = double('Product', :partner => 'EcommerceA', :id => 879)

        expect(EcommerceA::TrackProductAccess).to receive(:call)
        TrackProductAccess.call(product)
      end
    end

    context 'when is a product from ecommerce B' do
      it 'tracks product from ecommerce B' do
        product = double('Product', :partner => 'EcommerceB', :id => 879)

        expect(EcommerceB::TrackProductAccess).to receive(:call)
        TrackProductAccess.call(product)
      end
    end

    context 'when is a product from ecommerce C' do
      it 'tracks product from ecommerce C' do
        product = double('Product', :partner => 'EcommerceC', :id => 879)

        expect(EcommerceC::TrackProductAccess).to receive(:call)
        TrackProductAccess.call(product)
      end
    end
  end
end
