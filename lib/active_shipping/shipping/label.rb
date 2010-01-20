module ActiveMerchant
  module Shipping
    class Label
      FEDEX_FORMATS = [
        'COMMON2D',
        'LABEL_DATA_ONLY'
      ]

      FEDEX_IMAGE_TYPES = [
        'DPL',
        'EPL2',
        'PDF',
        'PNG',
        'ZPLII'
      ]

      attr_accessor :format_type
      attr_accessor :image_type
      attr_accessor :image

      def initialize(attrs = {})
        attrs.each do |key, value|
          self.send("#{key}=", value) if self.respond_to?("#{key}=")
        end

        self.image_type ||= 'PNG'
      end

    end
  end
end
