module ActiveMerchant
  module Shipping
    class ReturnShipment < Shipment
      attr_accessor :rma_number
      attr_reader :return_type
      def initialize(opts = {})
        self.rma_number = opts[:rma_number]

        @return_type = 'PRINT_RETURN_LABEL'
      end
    end
  end
end
