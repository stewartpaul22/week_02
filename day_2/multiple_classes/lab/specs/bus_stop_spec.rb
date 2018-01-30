require("minitest/autorun")
require("minitest/rg")
require_relative("../bus_stop.rb")
require_relative("../person.rb")

class BusStopTest < MiniTest::Test

  def setup
    @passenger1 = Person.new("John", 40)
    @passenger2 = Person.new("Dave", 50)
    @bus_stop = BusStop.new("Stop 1")
  end

  def test_has_name
    assert_equal("Stop 1", @bus_stop.name)
  end

  def test_has_queue
    assert([], @bus_stop.queue)
  end

  def test_add_person_to_queue
    @bus_stop.join_queue(@passenger1)
  end
  # +++++++++  Solution ++++++++++++++++++
  def test_can_add_person
    @bus_stop.add_person()
    assert_equal(1, @bus_stop.queue_count())
  end


  # +++++++++  Solution ++++++++++++++++++
end
