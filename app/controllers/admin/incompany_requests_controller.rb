class Admin::IncompanyRequestsController < ApplicationController
  before_action :set_incompanyrequest, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show]

  def index
    @incompanyrequests = IncompanyRequest.all
  end

  def show
  end

  def new
    @incompanyrequest = IncompanyRequest.new
  end

  def create
    @incompanyrequest = IncompanyRequest.new(incompanyrequest_params)

    if @incompanyrequest.save
      redirect_to @incompanyrequest, notice: 'Event request was succesfully created.'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @incompanyrequest = IncompanyRequest.find(params[:id])

    if @incompanyrequest.update_attributes(incompanyrequest_params)
      redirect_to @incompanyrequest
    else
      render 'edit'
    end
  end

  def destroy
    @incompanyrequest = IncompanyRequest.find(params[:id])
    @incompanyrequest.destroy
  end

private

  def set_incompanyrequest
    @incompanyrequest = IncompanyRequest.find(params[:id])
  end

  def incompanyrequest_params
    params.require(:incompanyrequest).permit(:first_name, :last_name, :email, :company_name)
  end

end
