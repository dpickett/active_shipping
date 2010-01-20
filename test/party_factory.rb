class PartyFactory
  include ActiveMerchant::Shipping
  def self.build(carrier = :fedex, attrs = {})
    default_location = Location.new(
      :country  => 'US',
      :state    => 'MA',
      :address1 => '4 Yawkey Way',
      :city     => 'Boston',
      :state    => 'MA',
      :zip      => '02215'
    )

    default_contact = Contact.new(
      :name => 'John Smith',
      :company => 'Red Sox',
      :phone_number => '1-555-867-5309',
      :fax_number => '1-555-867-5310',
      :email_address => 'user@example.com'
    )

    default_attrs = {
      :location => default_location,
      :contact => default_contact,
      :account_number => '5555555'
    }

    Party.new(default_attrs.merge(attrs))
  end
end
