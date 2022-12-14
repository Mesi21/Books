class Book
  attr_accessor :title, :author
  attr_reader :rents

  def initialize(title, author)
    @title = title
    @author = author
    @rents = []
  end

  def add_rental(rental)
    @rents.push(rental)
    rental.add_book(self)
  end
end
