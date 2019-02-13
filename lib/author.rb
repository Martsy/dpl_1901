require './lib/book'

class Author
  attr_reader :author_first_name, :author_last_name, :books

  def initialize(author_info) 
    @author_first_name = author_info[:author_first_name]
    @author_last_name  = author_info[:author_last_name]
    @books = []
  end 

  def add_book(book)
    @books << book 
  end 

end
