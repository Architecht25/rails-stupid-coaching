class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:ask]
    @answer = if @ask.blank?
                "Please ask a question!"
              elsif @ask.downcase == "i am going to work"
                "Great!"
              elsif @ask.end_with?("?")
                "Silly question, get dressed and go to work!"
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
