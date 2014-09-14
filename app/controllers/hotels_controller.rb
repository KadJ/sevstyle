class HotelsController < ApplicationController

  def index
    @hotels = Hotel.all
  end

  def new
    @hotel = Hotel.new    
  end

  def show
    find_item
  end

  def create
    @hotel = Hotel.new(hotel_params) 
    if @hotel.save
      flash[:success] = "Successfully created object!"
      redirect_to @hotel
    else
      render 'new'
    end
  end

  def edit
    find_item
  end

  def update
    if @hotel.update_attributes(hotel_params)
      flash[:success] = "Hotel updated"
      redirect_to @hotel
    else
      render 'edit'
    end
  end


  private

    def hotel_params
      params.require(:hotel).permit(:cost, :title, :breakfast,
                                   :start_rating, :description)
    end

    def find_item
      @hotel = Hotel.where(id: params[:id]).first
    end

end