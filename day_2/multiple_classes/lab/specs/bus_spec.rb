require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")
require_relative("../person.rb")
require_relative("../bus_stop.rb")

class BusTest < MiniTest::Test

  def setup
    @passenger1 = Person.new("John", 40)
    @passenger2 = Person.new("Dave", 50)
    @bus = Bus.new(22, "Ocean Terminal")
    @bus_stop = BusStop.new("Stop 1")
  end

  def test_has_route_number
    assert_equal(22, @bus.route_number)
  end

  def test_has_destination
    assert_equal("Ocean Terminal", @bus.destination)
  end

  def test_drive
    assert_equal("Brum brum", @bus.drive)
  end

  def test_has_passengers
    assert_equal([], @bus.passengers)
  end

  def test_check_number_of_pasengers
    passenger_quantity = @bus.number_of_passengers()
    assert_equal(0, passenger_quantity)
  end

  def test_add_passenger
    @bus.pick_up(@passenger1)
    assert_equal(1, @bus.passengers.count())
  end

  def test_remove_passenger
    @bus.pick_up(@passenger1)
    @bus.drop_off(@passenger1)
    assert_equal(0, @bus.passengers.count())
  end

  def test_remove_all_passengers
    @bus.pick_up(@passenger1)
    @bus.pick_up(@passenger2)
    @bus.drop_all_passengers()
    assert(0, @bus.passengers.count())
  end
  # +++++++++  Solution ++++++++++++++++++
  def test_can_get_from_stop
    @bus_stop.add_person(@passenger1)
    @bus_stop.add_person(@passenger2)
    @bus.pick_up_from_stop(@bus_stop)
    assert_equal(2, @bus.passenger_quantity())
    assert_equal(0, @bus_stop.queue_count())
  end
  # +++++++++  Solution ++++++++++++++++++
end
