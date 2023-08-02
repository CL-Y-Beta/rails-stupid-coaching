class QuestionsController < ApplicationController
  def initialize
    super
    @answer = 'Ask me anything.' # Set a default value for @answer
    @question = "none"
  end

  def home
  end

  def ask
  end

  def answer
    @question = params[:question]
    ends_with_question_mark = @question.match(/\?\z/)
    if @question == "I am going to work"
      @answer = "Great!"
    elsif ends_with_question_mark
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
