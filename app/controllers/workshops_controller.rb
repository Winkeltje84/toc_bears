class WorkshopsController < ApplicationController
  before_action :set_workshop, only: [:show, :edit, :update, :destroy]
  def index
    @workshops = Workshop.all
  end

  def show
  end

  def new
    @workshop = Workshop.new
  end

  def edit
  end

  def create
    @workshop = Workshop.new(workshop_params)
    if @workshop.save
      redirect_to workshop_path(@workshop), notice:"Workshop successfully created"
    else
      redirect_to new_workshop_path, alert:@workshop.errors.full_messages
    end
  end

  def update

    if @workshop.update(workshop_params)
      redirect_to workshop_path(@workshop), notice:"Workshop successfully updated"
    else
      render :edit, alert: @workshop.errors.full_messages
    end
  end

  def destroy
    @workshop.destroy
    redirect_to workshops_path, notice:"Workshop successfully deleted."
  end

  private
    def workshop_params
      params.require(:workshop).permit(:title, :description, :image, :demo_link, :github_link)
    end

    def set_workshop
      @workshop = Workshop.find(params[:id])
    end
end
