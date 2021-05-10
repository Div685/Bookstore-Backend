class BooksController < ApplicationController

  # GET /books
  def index
    @books = Book.all
    json_response(@books)
  end
end
