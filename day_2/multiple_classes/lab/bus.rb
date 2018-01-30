class Bus

  attr_reader :route_number, :destination, :passengers

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive
    return "Brum brum"
  end

  def number_of_passengers()
    return @passengers.count()
  end

  def pick_up(passenger)
    @passengers << passenger
  end

  def drop_off(dropped_passenger)
    for passenger in @passengers
      @passengers.delete(passenger) if passenger.name == dropped_passenger.name
      #@passengers.delete(dropped_passenger)
    end
  end

  def drop_all_passengers()
    @passengers.clear()
  end

  # +++++++++  Solution ++++++++++++++++++

  def pick_up_from_stop(stop)
    for person in stop.get_queue_copy()
      pick_up(person)
    end
    stop.clear_queue()
  end
  # +++++++++  Solution ++++++++++++++++++

end
