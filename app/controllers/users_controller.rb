class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: { hello: "world"}
  end

  def create
    head 200
  end
  
end
