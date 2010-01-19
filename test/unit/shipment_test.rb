require 'test_helper'

class ShipmentTest < Test::Unit::TestCase
  def setup
    @shipment = ShipmentFactory.build(:fedex)
  end

  def test_should_have_ship_at
    assert_not_nil @shipment.ship_at 
  end

  def test_should_have_service
    assert_not_nil @shipment.service
  end

  def test_should_have_valid_service
  end

  def test_should_have_packaging_type
    assert_not_nil @shipment.packaging_type
  end

  def test_should_have_shipper
    assert_not_nil @shipment.shipper
  end

  def test_should_have_recipient
    assert_not_nil @shipment.recipient
  end

  def test_should_have_payment_type
    assert_not_nil @shipment.payment_type
  end

  def test_should_have_label
    assert_not_nil @shipment.label
  end

  def test_should_have_requested_packages
    assert_not_nil @shipment.requested_packages
  end

end
