class Admin::SponsorRequestsController < ApplicationController
  def index
    @sponsor_requests = SponsorRequest.all
  end

  def new
    @sponsor_request = SponsorRequest.new
  end

  def show
    @sponsor_request = SponsorRequest.find(params[:id])
  end

  def create
    @sponsor_request = SponsorRequest.create(sponsor_request_params)
    #@sponsor_request.create(sponsor_request_params)
    if @sponsor_request.save(sponsor_request_params)
      redirect_to sponsor_path, notice: "Thank you for your request."
    else
      redirect_to sponsor_path
    end
  end

  def update
    @sponsor_request = SponsorRequest.find(params[:id])

    if @sponsor_request.update_attributes(sponsor_request)
       redirect_to sponsor_path
    end
  end

  def destroy
    @sponsor_request= SponsorRequest.find(params[:id])
    @sponsor_request.destroy
    redirect_to sponsor_requests_path
  end

  private
  def sponsor_request_params
    params.require(:sponsor_request).permit(:first_name, :last_name, :company_name, :date, :email, :places_available, :comments)
  end

  def set_sponsor_request
     @sponsor_request = SponsorRequest.find(params[:id])
  end
end
