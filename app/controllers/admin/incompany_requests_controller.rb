class Admin::IncompanyRequestsController < ApplicationController
  before_action :set_incompanyrequest, only: [:edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @incompanyrequests = IncompanyRequest.all
  end

  def show
  end

  def edit
      @incompanyrequest = IncompanyRequest.find(params[:id])
  end

  def update
    @incompanyrequest = IncompanyRequest.find(params[:id])

    if @incompanyrequest.update_attributes(incompanyrequest_params)
      redirect_to admin_incompany_requests_path(@incompanyrequest.id), notice: 'Item was successfully updated.'
    else
      render :edit, notice: 'Can you please make sure all fields are filled out correctly?'
    end
  end

  def destroy
    if @incompanyrequest.destroy
      redirect_to admin_incompany_requests_path, notice: "Request has been removed"
    else
      redirect_to admin_incompany_requests_path(@incompanyrequest.id)
    end
  end


private

  def set_incompanyrequest
    @incompanyrequest = IncompanyRequest.find(params[:id])
  end

  def incompanyrequest_params
    params.require(:incompany_request).permit(:first_name, :last_name, :email, :company_name, :workshop_id)
  end

end
