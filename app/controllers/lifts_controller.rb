class LiftsController < ApplicationController
  before_action :authenticate_user!

  def index
    @lifts = current_user.lifts.all.order(:name)
  end

  def show
    id = params[:id]
    @lift = Lift.find(id)
  end

  def update
    id = params[:id]
    @lift = Lift.find(id)
    @lift.update(lift_params)
    flash[:success] = "#{@lift.name} updated."
    redirect_to @lift
  end

  private

  def lift_params
    params.require(:lift).permit(:name, :one_rep_max)
  end

end
