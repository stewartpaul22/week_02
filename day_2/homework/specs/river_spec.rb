require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")

class RiverTest < MiniTest::Test

  def setup
    fish1 = Fish.new("salmon")
    fish2 = Fish.new("trout")
    fish3 = Fish.new("carp")
    fish4 = Fish.new("eel")
    @river = River.new("Amazon", [fish1, fish2, fish3, fish4])
  end

  def test_can_get_name
    assert_equal("Amazon", @river.name)
  end

  def test_fish_count
    assert_equal(4, @river.fish_count())
  end

end
