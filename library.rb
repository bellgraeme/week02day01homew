class Library

  attr_accessor :volumes
  def initialize(volumes)
    @volumes = volumes
  end
  
 def list(volumes)
   for each in volumes.itself
    puts each
   end
 end


  def query(volumes, item)
   for book in list
      if book[:title] == item
        return book[:rental_details]
      end
   end
  end

  def add_book(volumes, book)
    return volumes.merge!(book)
  end

  def check_book(volumes, book)

    for each in volumes
      if  each[:title] == book
        return each[:title]
      end
    end
  end
end
# volume = Library.new({ 
#     title: "lord_of_the_rings",
#     rental_details: { 
#      student_name: "Jeff", 
#      date: "01/12/16"
#     }
#   })

# p volume