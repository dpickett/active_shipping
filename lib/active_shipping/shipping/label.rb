module ActiveMerchant
  module Shipping
    class Label
      FEDEX_FORMATS = [
        'COMMON2D',
        'LABEL_DATA_ONLY'
      ]

      attr_accessor :format_type
      attr_accessor :image_type

      def initialize(attrs = {})
        attrs.each do |key, value|
          self.send("#{key}=", value) if self.respond_to?("#{key}=")
        end
      end

    end
  end
end
