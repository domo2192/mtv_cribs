class Building
  attr_reader:units, :renters
  def initialize
    @units = []
    @renters = []
    #@average_rent = average_rent
  end
  def add_unit(unit)
    @units << unit
  end
  def add_renter(renter)
    renters_arr = []
    renters_arr.each do |renter|
      building.renters[:renter]
      renters_arr = @renters
    end
  end
  #def average_rent
  #
  #   average_rent = building.dig[2, :units]
  # end
end
