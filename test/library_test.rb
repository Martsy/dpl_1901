require 'minitest/autorun'
require 'minitest/pride'
require './lib/book'
require './lib/author'
require './lib/library_test'

class LibraryTest < Minitest::Test

  def setup

    @dpl = Library.new
    @nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})
    @fifth_season = nk_jemisin.add_book("The Fifth Season", "November 3, 2015")
    @kingdoms = nk_jemisin.add_book("The Hundred Thousand Kingdoms", "2010")
    @harper_lee  = Author.new({first_name: "Harper", last_name: "Lee"})
    @mockingbird = harper_lee.add_book("To Kill a Mockingbird", "July 11, 1960"
  end 

  def test_library_class_exits
    assert_instance_of Library, @dpl
  end 

  def test_books_is_an_empty_array
    assert_equal, [], @dpl.books 
  end
end




end
