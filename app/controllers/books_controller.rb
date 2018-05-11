class BooksController < ApplicationController
  def new
    @book = Book.new
    @book.questions.build
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to book_path(@book)
  end

  def show
    @book = Book.find(params[:id])
  end

  private
    def book_params
      params.require(:book).permit(:title, :creator, :questions_attributes => [:content])
    end
end
