# frozen_string_literal: true

# Question Controller for my first rails app
class QuestionsController < ApplicationController
  def ask
    # p request
  end

  def answer
    # p request

    @question = params[:question] || ""
    # p @question

    @answer = if @question == 'I am going to work'
                'Great!'
              elseif @question == "" 
                'Dont just sit there saying nothing. Go to work!'
              elsif @question.include?('?')
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
