class QuestionsController < ApplicationController
  def show
    @book = Book.find(params[:book_id])
    @question = Question.find(params[:id])
  end
end
