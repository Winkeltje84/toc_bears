class IncompanyRequestsController < ApplicationController

  def index
    @event = Event.all
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event =
  end

  def destroy
    if @event.destroy
    redirect_to_events_path, notice:"Are you sure you want to delete this event?"
    else
      redirect_to_events_path
    end
  end

private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:first_name, :last_name, :email, :company_name)
  end

end


# def new
#     @profile = Profile.new
#   end
#
# def create
#   @profile = current_user.build_profile(profile_params)
#
#   if @profile.save
#     redirect_to edit_profile_path(@profile), notice: "Profile successfully created"
#   else
#     render :new
#   end
# end
#
# def edit
# end
#
# def update
#   if @profile.update(profile_params)
#     redirect_to edit_profile_path(@profile), notice: "Profile successfully updated"
#   else
#     render :edit
#   end
# end
#
#
# private
#
#   def set_profile
#     @profile = current_user.profile
#   end
#
#   def profile_params
#     params.require(:profile).permit(:first_name, :last_name, :delivery_address)
#   end
#
#
# end
