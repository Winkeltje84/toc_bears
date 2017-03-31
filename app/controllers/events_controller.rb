class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update]
  before_action :authenticate_user!
  layout 'admin'

  def index
    @public_events = Event.open_for_public
    @incompany_events = Event.in_company
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)

    if @event.save
      redirect_to @event, notice: "Event created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @event = Event.update(event_params)

    if @event.save
      redirect_to @event, notice: "Event updated"
    else
      render :edit
    end
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:title, :location, :spaces, :image, :public, :date)
    end
end
