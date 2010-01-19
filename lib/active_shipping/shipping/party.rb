module ActiveMerchant
  module Shipping
    class Party
      attr_accessor :location
      attr_accessor :contact
      attr_accessor :account_number

      def initialize(attrs = {})
        attrs.each do |key, value|
          self.send("#{key}=", value) if self.respond_to?("#{key}=")
        end
      end
    end
  end
end
