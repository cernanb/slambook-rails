class AnswersController < ApplicationController
  def create
    question = Question.find(params[:question_id])
    answer = question.answers.build(answer_params)
    
    if answer.save
      question.book.questions.last == question ? (redirect_to book_path(params[:book_id])) : (redirect_to book_next_question_path(params[:book_id], question))
    end
  end

  private
    def answer_params
      params.require(:answer).permit(:content)
    end
end
