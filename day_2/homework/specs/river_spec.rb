require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")
  end

  def test_can_get_name
    assert_equal("Amazon", @river.name)
  end

  def test_fish_count
    assert_equal(0, @river.fish_count())
  end

end
