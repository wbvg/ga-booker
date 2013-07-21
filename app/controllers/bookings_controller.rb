class BookingsController < ApplicationController
before_filter :check_if_admin, :only => [:new, :create, :edit, :update]

  def index
    @bookings = Booking.order(:time)
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(params[:booking])
    if
    @booking.save
      redirect_to(bookings_path)
    else
      @obj = @booking
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    render :new
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update_attributes(params[:booking])
      redirect_to(bookings_path)
    else
      @obj = @booking
      render :new
    end
  end

  private
  def check_if_admin
    redirect_to(root_path) if @auth.nil? || !@auth.is_admin?
  end

end

