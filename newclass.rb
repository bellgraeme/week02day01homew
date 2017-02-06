class CohortStudent

  attr_accessor  :name, :cohort, :prog_lang

  def initialize(name_student, cohort, prog_lang)
    @name = name_student
    @cohort = cohort
    @prog_lang = prog_lang
  end

  def talk
    return "#{@name} said I can talk"
  end

  def fav_prog_lang
    return "#{@prog_lang} is my favourite"
  end
end