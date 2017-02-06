require('minitest/autorun')
require_relative('./newclass')
require('minitest/rg')

class TestCohorStudent < MiniTest::Test

  def test_talk
    student = CohortStudent.new("Sam", 11, "Java")
    assert_equal("Sam said I can talk", student.talk)
  end

  def test_fav_prog_lang
    student = CohortStudent.new("Sam", 11, "Java")
    assert_equal("Java is my favourite", student.fav_prog_lang)
  end
end