class CoachingController < ApplicationController
  def ask
  end

  def answer
    if params[:query]
      if params[:query] == "salut"
        @answer = "That's good my friend! Go ahead !!"
      elsif params[:query].include?("?")
        @answer = "Silly question, get dressed and go to work!"
      else
        @answer = "I don't care, get dressed and go to work! "
      end
    else
      @answer = "Ce test fontionne "
    end
  end
end
