class ShipmentFactory
  include ActiveMerchant::Shipping

  def self.build(carrier = :fedex)
    shipment = ReturnShipment.new
    if carrier == :fedex
      shipment.ship_at = Time.now
      shipment.service = 'FEDEX_GROUND'
      shipment.payment_type = 'RECIPIENT'
      shipment.packaging_type = FedEx::PackageTypes['your_packaging']
      shipment.recipient = PartyFactory.build(:fedex)
      jillians_boston = Location.new(
        :address1 => '145 Ipswitch Street',
        :city => 'Boston',
        :state => 'MA',
        :zip => '02215',
        :country => 'US'
      )
      shipment.shipper = PartyFactory.build(:fedex, :location => jillians_boston)
      shipment.total_weight_value = 10
      shipment.payment_type = 'SENDER'
      shipment.total_weight_units = 'LB'
    end
    
    shipment
  end
end
