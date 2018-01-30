require("minitest/autorun")
require("minitest/rg")
require_relative("../person.rb")

class PersonTest < MiniTest::Test

  def setup
    @person = Person.new("Paul", 21)
  end

  def test_has_name
    assert_equal("Paul", @person.name)
  end

  def test_has_age
    assert_equal(21, @person.age)
  end

end
