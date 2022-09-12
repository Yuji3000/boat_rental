class Dock
  attr_reader :name, :max_rental_time
  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
  end
  
  def rent(:type, @renter)
    rental_log.merge![:type] = @renter
  end
  
  def rental_log
    rental_log = {} 
  end
end