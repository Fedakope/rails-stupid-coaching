class QuestionsController < ApplicationController
  def ask
    # test tset
  end

  def answer
    answer_to_question(params[:question])
    @answer = answer_to_question(params[:question])
    @asked_question = params[:question]
  end

  def answer_to_question(question)
    if question == 'I am going to work'
      'Great!'
    elsif question[-1] == '?'
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
