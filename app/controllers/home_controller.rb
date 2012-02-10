class HomeController < ApplicationController
  
  before_filter :authenticate_user!
  
  def index
    render :text => "Welcome!"
  end
  
end