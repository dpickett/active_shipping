module ActiveMerchant #:nodoc:
  module Shipping
    
    class LocationResponse < Response
      attr_reader :location
      
      def initialize(success, message, params = {}, options = {})
        @location = options[:location]
        super
      end
    end
    
  end
end
