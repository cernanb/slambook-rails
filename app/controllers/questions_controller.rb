class QuestionsController < ApplicationController
  def show
    @book = Book.find(params[:book_id])
    @question = Question.find(params[:id])
  end
  
  def next
    @book = Book.find(params[:book_id])
    @question = Question.find(params[:id])
    next_question = @book.questions.where('id > ?', @question.id).first
    redirect_to book_question_path(@book, next_question)
  end
end
