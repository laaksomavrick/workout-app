class RoutinesController < ApplicationController
  before_action :authenticate_user!

  def index
    @days = current_user.days
  end

end
