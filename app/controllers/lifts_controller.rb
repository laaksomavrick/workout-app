class LiftsController < ApplicationController
  before_action :authenticate_user!

  def index
    @lifts = current_user.lifts.all.order(:name)
  end

  def edit
    id = params[:id]
    @lift = Lift.find(id)
  end

  def new
    @lift = Lift.new
  end

  def create
    @lift = current_user.lifts.create(lift_params)
    if @lift.valid?
      flash[:success] = "Created lift."
      redirect_to edit_lift_path(@lift)
    else
      flash[:error] = "Failed to create lift."
      redirect_to new_lift_path
    end
  end

  def update
    id = params[:id]
    @lift = Lift.find(id)
    if @lift.update(lift_params)
      flash[:success] = "#{@lift.name} updated."
    else
      flash[:error] = "#{@lift.name} failed to update."
    end
    redirect_to edit_lift_path(@lift)
  end

  private

  def lift_params
    params.require(:lift).permit(:name, :one_rep_max)
  end

end
