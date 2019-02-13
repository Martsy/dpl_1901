require 'minitest/autorun'
require 'minitest/pride'
require './lib/book'
require './lib/author'

class AuthorTest < Minitest::Test
  def setup
    @book = Book.new({
      author_first_name: "Harper", 
      author_last_name: "Lee", 
      title: "To Kill a Mockingbird", 
      publication_date: "July 11, 1960"
      })
    @nk_jemisin = Author.new({
      first_name: "N.K.", 
      last_name: "Jemisin"
      })
    #  @book1 = @nk_jemisin.add_book("The Hundred Thousand Kingdoms", "2010")
    #  @book2 = @nk_jemisin.add_book("The Fifth Season", "November 3, 2015")
  end 

  def test_author_class_exists
    assert_instance_of Author, @nk_jemisin
  end

  def test_author_has_books_that_is_an_empty_array
    assert_equal [], @nk_jemisin.books 
  end

  def test_that_you_can_add_books_to_an_empty_array
    @nk_jemisin.add_book1
    @nk_jemisin.add_book2
    assert_equal [@book1, @book2], @nk_jemisin.books 
  end


end
