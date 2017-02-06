require('minitest/autorun')
require_relative('./library')
require('minitest/rg')

class TestLibrary < MiniTest::Test

  def setup 
    @volumes =   { 
      title: "lord_of_the_rings",
      rental_details: { 
       student_name: "Jeff", 
       date: "01/12/16"
     }
   }
  end


 def test_book_list
  library = Library.new({ 
      title: "lord_of_the_rings",
      rental_details: { 
       student_name: "Jeff", 
       date: "01/12/16"
     }
   })

  assert_equal({ 
      title: "lord_of_the_rings",
      rental_details: { 
       student_name: "Jeff", 
       date: "01/12/16"
     }
   }, library.list(@volumes))
 end

def test_query
  list = @volumes
  item = "lord_of_the_rings"
  assert_equal(@volumes[:rental_details], @volumes.query(list, item))
end


def test_add_book
  library = @volumes
  book = { title: "test_book",
    rental_retails: {
      student_name: "Bob",
      date: "02/03/14"
    }
  }

  assert_equal("test_book", library.add_book(@volumes, book).check_book(@volumes, book) )
end
end