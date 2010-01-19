module ActiveMerchant
  module Shipping
    class Shipment
      include ActiveMerchant::Shipping

      FEDEX_PAYMENT_TYPES = [
        'COLLECT',
        'RECIPIENT',
        'SENDER',
        'THIRD_PARTY' 
      ]

      attr_accessor :ship_at
      attr_accessor :service
      attr_accessor :packaging_type
      attr_accessor :shipper
      attr_accessor :total_insured_value
      attr_accessor :recipient
      attr_accessor :payment_type
      attr_accessor :special_services
      attr_accessor :label
      attr_accessor :requested_packages

      def initialize(attrs = {})
        attrs.each do |key, value|
          self.send("#{key}=", value) if self.respond_to?("#{key}=")
        end

        self.label ||= Label.new(:format_type => 'LABEL_DATA_ONLY')
        self.requested_packages ||= 1
      end
    end
  end
end
