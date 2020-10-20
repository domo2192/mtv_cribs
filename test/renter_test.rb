require './lib/apartment'
require './lib/renter'
require 'minitest/pride'
require 'minitest/autorun'

class RenterTest < Minitest::Test

  def setup
    @renter1 = Renter.new("Jessie")
  end
  def test_it_exists

    assert_instance_of Renter,@renter1
  end
  def test_renter_has_a_name
    assert_equal "Jessie", @renter1.name
  end
end

class ApartmentTest < Minitest::Test
  def setup
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
  end
  def test_it_exists
    assert_instance_of Apartment, @unit1
  end
  def test_it_has_attributes
    assert_equal "A1", @unit1.number
    assert_equal 1200, @unit1.monthly_rent
    assert_equal 1, @unit1.bathrooms
    assert_equal 1, @unit1.bedrooms
  end
  def test_it_adds_renters
    @renter1 = Renter.new("Jessie")
    @unit1.add_renter(@renter1)
    assert_equal @renter1, @unit1.renter
    #require 'pry';binding.pry 
  end
end
