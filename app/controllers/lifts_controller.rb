class LiftsController < ApplicationController
  before_action :authenticate_user!

  def index
    @lifts = current_user.lifts.all
  end

end
