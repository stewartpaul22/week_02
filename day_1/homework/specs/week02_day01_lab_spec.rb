require('minitest/autorun')
require('minitest/rg')
require_relative('../week02_day01_lab')

class TestStudent < MiniTest::Test

  def test_get_student_name
    student = Student.new("Paul", 4)
    assert_equal("Paul", student.get_student_name())
  end

  def test_get_cohort_number
    student = Student.new("Paul", 4)
    assert_equal(4, student.get_cohort_number())
  end

  def test_set_student_name
    student = Student.new("Paul", 4)
    student.set_student_name("Fiona")
    assert_equal("Fiona", student.get_student_name())
  end

  def test_set_cohort_number
    student = Student.new("Paul", 4)
    student.set_cohort_number(5)
    assert_equal(5, student.get_cohort_number())
  end

  def test_student_talk
    student = Student.new("Paul", 4)
    assert_equal("I can talk!", student.talk())
  end

  def test_student_fav_lang
    student = Student.new("Paul", 4)
    fav_lang = "Ruby"
    assert_equal("I love Ruby!", student.say_favourite_language(fav_lang))
  end

end
