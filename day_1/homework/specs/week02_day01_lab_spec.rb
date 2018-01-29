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
  # 11
  def test_add_player
    team = Team.new("The G4 Giants", ["Bill", "Moira", "Tony", "Julie"], "Coach Alex")
    team.add_player("Dave")
    assert_equal(["Bill", "Moira", "Tony", "Julie", "Dave"], team.player_list())
  end
  # 12
  def test_check_for_player__is_in_team
    #Arrange
    team = Team.new("The G4 Giants", ["Bill", "Moira", "Tony", "Julie"], "Coach Alex")
    check_player = "Tony"
    #Act
    result = team.check_for_player(check_player)
    #Assert
    assert_equal(true, result)
  end
  # 13
  def test_check_for_player__not_in_team
    #Arrange
    team = Team.new("The G4 Giants", ["Bill", "Moira", "Tony", "Julie"], "Coach Alex")
    check_player = "Glenda"
    #Act
    result = team.check_for_player(check_player)
    #Assert
    assert_equal(false, result)
  end
  # 14
  def test_increase_points__win
    # Arrange
    team = Team.new("The G4 Giants", ["Bill", "Moira", "Tony", "Julie"], "Coach Alex")
    win = true
    # Act
    team.update_points(win)
    # Assert
    assert_equal(1, team.points)
  end
  # 15
  def test_increase_points__no_win
    # Arrange
    team = Team.new("The G4 Giants", ["Bill", "Moira", "Tony", "Julie"], "Coach Alex")
    win = false
    # Act
    team.update_points(win)
    # Assert
    assert_equal(0, team.points)
  end

end

# class TestLibrary < MiniTest::Test
#
#   def setup
#
#     @books = [
#       {
#         title: "Lord of the rings",
#         rental_details: {
#           student_name: "Paul",
#           date: "01/01/18"
#         }
#       }
#     ]
#
#   end
#
#   def test_get_books
#     library = Library.new(@books)
#
#   end
#
# end

class TestLibrary < MiniTest::Test
  # 16
  def test_library_has_books
    library = Library.new([])
    assert_equal([], library.books)
  end
  # 17
  def test_get_info_for_title
    #arrange
    book = {
      title: "Lord of the Rings",
      rental_details: {
        student_name: "Jeff",
        date: "29/01/2018"
      }
    }

    library = Library.new([book])
    #act
    book_info = library.get_info_for_title("Lord of the Rings")
    #assert
    assert_equal(book, book_info)
  end
  #18
  def test_get_rental_details
     # Arrange
     book = {
       title: "Lord of the Rings",
       rental_details: {
         student_name: "Jeff",
         date: "29/01/2018"
       }
     }

     library = Library.new([book])
     # Act
     rental_details = library.get_rental_details_for_book("Lord of the Rings")
     # Assert
     assert_equal(book[:rental_details], rental_details)
  end

end
