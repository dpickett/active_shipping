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

      FEDEX_DROPOFF_TYPES = [
        "REGULAR_PICKUP",
        "REQUEST_COURIER",
        "DROP_BOX",
        "BUSINESS_SERVICE_CENTER",
        "STATION"
      ]

      FEDEX_RATE_REQUEST_TYPES = [
        "ACCOUNT",
        "LIST"
      ]

      attr_accessor :ship_at
      attr_accessor :service
      attr_accessor :packaging_type
      attr_accessor :shipper
      attr_accessor :total_insured_amount
      attr_accessor :total_insured_currency
      attr_accessor :recipient
      attr_accessor :payment_type
      attr_accessor :special_services
      attr_accessor :label
      attr_accessor :requested_packages
      attr_accessor :dropoff_type
      attr_accessor :rate_request_type
      attr_accessor :package_count
      attr_accessor :total_weight_value
      attr_accessor :total_weight_units
      attr_accessor :payor_account_number

      attr_accessor :tracking_number
      attr_accessor :transit_time

      attr_reader :payor_account_country

      def initialize(attrs = {})
        attrs.each do |key, value|
          self.send("#{key}=", value) if self.respond_to?("#{key}=")
        end

        self.label ||= Label.new(:format_type => 'COMMON2D')
        self.requested_packages ||= 1
        self.dropoff_type ||= 'REGULAR_PICKUP' 
        self.service ||= 'FEDEX_GROUND'
        self.packaging_type ||= 'YOUR_PACKAGING'
        self.ship_at ||= Time.now
        self.package_count ||= 1
        self.rate_request_type ||= 'ACCOUNT'
        self.total_insured_currency ||= 'USD' if self.total_insured_amount
        self.total_weight_units ||= 'LB' if self.total_weight_value
      end
    end

    def payor_account_country=(c)
      @payor_account_country = (c.nil? || c.is_a?(ActiveMerchant::Country)) ?
        c : ActiveMerchant::Country.find(c)
      @payor_account_country
    end
  end
end
