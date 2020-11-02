class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:answer]

    'Great!' if @question == 'i am going to work!'
    if @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end

# @questions = ['i am going to work!', '?']
#     if params[:question]
#       @question = @question.select { |question| question.end_with?(params[:question]) }
#     end
