class Building
  attr_reader:units, :renters
  def initialize
    @units = []
    @renters = []
    @average_rent = average_rent
  end
  def add_unit(unit)
    @units << unit
  end
  def add_renter(renter)
    renters = []
    renters.each do |renter|
      building.renters[:renter]
    end  
  end
  def average_rent
    # average_rent = building[:units]
  end
end
