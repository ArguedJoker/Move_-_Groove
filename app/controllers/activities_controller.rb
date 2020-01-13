class ActivitiesController < ApplicationController
  before_action :authenticate_user! 
  before_action :fetch_activity, only: [:show, :edit, :update, :destroy]

  def index
    @activities = current_user.activities.order("activity_date desc")
  end

  def show
  end

  def create   
    @activity = current_user.activities.build(activity_params)
    @activity.save

    if @activity.save
      redirect_to @activity
    else
      flash.now[:alert] = @activity.errors.full_messages.join(", ")
      render action: :new
    end
  end

  def edit
  end

  def update
    if @activity.update activity_params
      redirect_to @activity, notice: 'Your activity was updated successfully.'
    else
      render action: :edit 
    end
  end

  def destroy
    @activity.destroy
    redirect_to root_path, notice: "Activity deleted"
  end

  private

  def activity_params
    params.require(:activity).permit(:activity_name, :activity_duration, :activity_date)
  end

  def fetch_activity
    @activity = current_user.activities.find params[:id]
  end
end
