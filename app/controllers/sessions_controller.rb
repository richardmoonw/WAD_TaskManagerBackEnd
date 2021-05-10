class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  # Log users with omniauth
  def create
    p "HEEELLO"
    binding.pry
  end
end