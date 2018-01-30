class Student

  def initialize(input_name, input_cohort)
    @name = input_name
    @cohort = input_cohort
  end

  def get_student_name()
    return @name
  end

  def get_cohort_number()
    return @cohort
  end

  def set_student_name(student_name)
    @name = student_name
  end

  def set_cohort_number(cohort_number)
    @cohort = cohort_number
  end

  def talk
    return "I can talk!"
  end

  def say_favourite_language(language)
    return "I love #{language}!"
  end

end

class Team

  attr_accessor :team_name, :player_list, :coach_name, :points

  def initialize(name, players, coach)
    @team_name = name
    @player_list = players
    @coach_name = coach
    @points = 0
  end

  # def get_team_name()
  #   return @name
  # end
  #
  # def get_player_list()
  #   return @players
  # end
  #
  # def get_coach_name()
  #   return @coach
  # end
  #
  # def set_coach_name(coach_name)
  #   @coach = coach_name
  # end

  def add_player(player_name)
    @player_list << player_name
  end

  def check_for_player(player_name)
    for player in @player_list
      return true if player_name == player
    end
    return false
  end

  def update_points(result)
    @points += 1 if result == true
  end

end

# class Library
#
#   attr_reader :books
#
#   def initialize(books)
#     @books = books
#   end
#
# end

class Library

  attr_reader :books

  def initialize(books) # books is an array
    @books = books
  end

  def get_info_for_title(title)
    for book in @books
      return book if book[:title] == title
    end
    return nil
  end

  def get_rental_details_for_book(title)
    for book in @books
      return book[:rental_details] if book[:title] == title
    end
    return nil
  end

  def book_count()
    return @books.count()
  end

  def add_book_to_library(title)
    new_book = {
      title: title,
      rental_details: {
        sudent_name: "",
        date: ""
      }
    }
    @books << new_book
  end

  def change_rental_details(title, name, date)
    for book in @books
      if book[:title] == title
        book[:rental_details][:student_name] = name
        book[:rental_details][:date] = date
      end
    end
  end

end
