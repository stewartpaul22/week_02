require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi")
    @river = River.new("Amazon")
    @fish1 = Fish.new("salmon")
    @fish2 = Fish.new("trout")
    @fish3 = Fish.new("carp")
    @fish4 = Fish.new("eel")
  end

  def test_can_get_name
    assert_equal("Yogi", @bear.name)
  end

  def test_stomach_count
    assert_equal(0, @bear.stomach_count())
  end

  def test_can_take_fish_from_river
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
    @bear.take_fish_from_river(@river)
    @bear.take_fish_from_river(@river)
    assert_equal(2, @bear.stomach_count())
    #assert_equal(1, @river.fish_count())
  end

end
