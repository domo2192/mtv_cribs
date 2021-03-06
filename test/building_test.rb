require './lib/apartment'
require './lib/renter'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/building'

class BuildingTest < Minitest::Test

  def setup
    @building = Building.new
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    @renter1 = Renter.new("Aurora")
    @renter2 = Renter.new("Tim")
  end
  def test_it_exists
    assert_instance_of Building, @building
  end
  def test_units_are_array
    assert_equal [],@building.units
  end
  def test_we_can_add_units
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)
    assert_equal [@unit1,@unit2],@building.units
  end
  def test_we_can_add_renters
    #require 'pry';binding.pry
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)
    @unit1.add_renter(@renter1)
    @unit2.add_renter(@renter2)
    assert_equal [@renter1,@renter2], @building.renters
    # require'pry';binding.pry
  end
  def test_we_can_average_rent
    #require'pry';binding.pry
    assert_equal 1099.5, @building.average_rent

  end
end
