require('minitest/autorun')
require('minitest/rg')
require_relative('../week02_day01_lab')

class TestStudent < MiniTest::Test
  # 1
  def test_get_student_name
    student = Student.new("Paul", 4)
    assert_equal("Paul", student.get_student_name())
  end
  # 2
  def test_get_cohort_number
    student = Student.new("Paul", 4)
    assert_equal(4, student.get_cohort_number())
  end
  # 3
  def test_set_student_name
    student = Student.new("Paul", 4)
    student.set_student_name("Fiona")
    assert_equal("Fiona", student.get_student_name())
  end
  # 4
  def test_set_cohort_number
    student = Student.new("Paul", 4)
    student.set_cohort_number(5)
    assert_equal(5, student.get_cohort_number())
  end
  # 5
  def test_student_talk
    student = Student.new("Paul", 4)
    assert_equal("I can talk!", student.talk())
  end
  # 6
  def test_student_fav_lang
    student = Student.new("Paul", 4)
    fav_lang = "Ruby"
    assert_equal("I love Ruby!", student.say_favourite_language(fav_lang))
  end

end

class TestTeam < MiniTest::Test
  # 7
  def test_get_team_name
    team = Team.new("The G4 Giants", ["Bill", "Moira", "Tony", "Julie"], "Coach Alex")
    assert_equal("The G4 Giants", team.team_name())
  end
  # 8
  def test_get_player_list
    team = Team.new("The G4 Giants", ["Bill", "Moira", "Tony", "Julie"], "Coach Alex")
    assert_equal(["Bill", "Moira", "Tony", "Julie"], team.player_list())
  end
  # 9
  def test_get_coach_name
    team = Team.new("The G4 Giants", ["Bill", "Moira", "Tony", "Julie"], "Coach Alex")
    assert_equal("Coach Alex", team.coach_name())
  end
  # 10
  def test_set_coach_name
    team = Team.new("The G4 Giants", ["Bill", "Moira", "Tony", "Julie"], "Coach Alex")
    team.coach_name = ("Coach Maggie")
    assert_equal("Coach Maggie", team.coach_name())
  end

end
