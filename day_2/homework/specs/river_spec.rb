require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")

class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("salmon")
    @river = River.new("Amazon")
  end

  def test_can_get_name
    assert_equal("Amazon", @river.name)
  end

  def test_fish_count
    assert_equal(0, @river.fish_count())
  end

  def test_can_add_fish_to_river
    @river.add_fish(@fish1)
    assert_equal(1, @river.fish_count())
  end

end
