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

  attr_accessor :team_name, :player_list, :coach_name

  def initialize(name, players, coach)
    @team_name = name
    @player_list = players
    @coach_name = coach
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

end
