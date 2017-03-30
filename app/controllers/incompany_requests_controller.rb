class IncompanyRequestsController < ApplicationController
  before_action: set_incompanyrequest

  def index
    @incompanyrequests = IncompanyRequest.all
  end


  def new
    @incompanyrequest = IncompanyRequest.new
  end

  def create
    @incompanyrequest = IncompanyRequest.new(incompanyrequest_params)

    if @incompanyrequest.save
      redirect_to @incompanyrequest
    else
      render 'new'
    end
  end

  def edit
    @incompanyrequest = IncompanyRequest.find(params[:id])
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
