class Admin::SponsorsController < ApplicationController
  before_action :set_sponsor, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_user!

  def new
    @sponsor = Sponsor.new
  end

  def index
    @sponsors = Sponsor.all
  end

  def create
    @sponsor = Sponsor.create(sponsor_params)

    if @sponsor.save
      redirect_to @sponsor, notice: "Sponsor created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @sponsor = Sponsor.update(sponsor_params)

    if @sponsor.save
      redirect_to @sponsor, notice: "Sponsor updated"
    else
      render :edit
    end
  end

  def destroy
    @sponsor = Sponsor.find(params[:id])
    @sponsor.destroy
    redirect_to sponsors_path, notice: "Sponsor deleted"
  end
end

private
  def set_sponsor
    @sponsor = Sponsor.find(params[:id])
  end

  def sponsor_params
    params.require(:sponsor).permit(:company_name, :logo)
  end
