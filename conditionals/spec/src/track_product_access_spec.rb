require_relative '../spec_helper'
require_relative '../../src/track_product_access'

class StubbedEcommerce
  module TrackProductAccess
    def self.call(id)
      'Tracking from a stubbed ecommerce'
    end
  end
end

describe TrackProductAccess do
  describe '#call' do
    context 'when tracking a product from existent ecommerce' do
      it 'tracks product from correct ecommerce' do
        product = double('Product', :partner => 'StubbedEcommerce', :id => 879)

        expect(StubbedEcommerce::TrackProductAccess).to receive(:call)
        TrackProductAccess.call(product)
      end
    end

    context 'when tracking a product from a nonexistent ecommerce' do
      it 'raises an invalid ecommerce name error' do
        product = double('Product', :partner => 'InvalidEcommerce', :id => 879)

        expect { TrackProductAccess.call(product) }.to raise_error(Exception)
      end
    end
  end
end
