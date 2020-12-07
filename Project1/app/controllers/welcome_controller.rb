class WelcomeController < ApplicationController
  def index
    @id = params[:id]
  end

  def show
    @id =params[:id]
  end
  
  def create
    redirect_to action: :index
  end
end
