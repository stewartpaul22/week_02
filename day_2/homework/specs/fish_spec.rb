require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("salmon")
  end

  def test_can_get_name
    assert_equal("salmon", @fish.name)
  end

end
