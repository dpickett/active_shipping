require 'test_helper'

class ActiveMerchant::Shipping::PartyTest < Test::Unit::TestCase
  include ActiveMerchant::Shipping
  def setup
    @party = PartyFactory.build(:fedex)
  end

  def test_has_location
    assert_not_nil @party.location
  end

  def test_has_contact
    assert_not_nil @party.contact
  end

  def test_has_account_number
    assert_not_nil @party.account_number
  end
end
