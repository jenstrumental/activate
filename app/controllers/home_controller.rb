class HomeController < ApplicationController
  
  before_filter :authenticate_user!
  
  def index
    begin
      if params[:new_session_id]
        @exercise_session = ExerciseSession.find(params[:new_session_id])
      end
    rescue Mongoid::Errors::DocumentNotFound
      logger.info("Couldn't find session id from params.")
    end
  end
  
end