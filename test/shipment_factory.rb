class ShipmentFactory
  include ActiveMerchant::Shipping

  def self.build(carrier = :fedex)
    shipment = Shipment.new
    if carrier == :fedex
      shipment.ship_at = Time.now
      shipment.service = 'FEDEX_GROUND'
      shipment.payment_type = 'RECIPIENT'
      shipment.packaging_type = FedEx::PackageTypes['your_packaging']
      shipment.recipient = PartyFactory.build(:fedex)
      shipment.shipper = shipment.recipient
    end
    
    shipment
  end
end
