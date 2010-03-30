module ActiveMerchant #:nodoc:
  module Shipping
    
    class ReturnLabelResponse < Response
      attr_reader :shipment
      
      def initialize(success, message, params = {}, options = {})
        @shipment = options[:shipment]
        super
      end
    end
    
  end
end
