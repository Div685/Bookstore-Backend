class BooksController < ApplicationController
  before_action :set_book, only: [:show, :update, :destroy]

  # GET /books
  def index
    @books = Book.all
    json_response(@books)
  end

  def create
    @book = Book.create!(book_params)
    json_response(@book, :created)
  end

  def show
    # @book = Book.find(params[:id])
    json_response(@book)
  end

  def update
    @book.update(book_params)
    head :no_content
  end

  def destroy
    @book.destroy
    head :no_content
  end

  private

  def book_params 
    params.require(:book).permit(:title, :author, :category_id)
  end

  def set_book
    @book = Book.find(params[:id])
  end
end
