class Student

  def initialize(input_name, input_cohort, fav_lang)
    @name = input_name
    @cohort = input_cohort
    @fav_lang = fav_lang
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
