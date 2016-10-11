class FoodOrdersController < ApplicationController

  def create
    chosen_donation = Donation.find(params[:donation_id])
    @food_order = FoodOrder.new
    @food_order.donation_id = chosen_donation.id
    @food_order.user_id = @current_user.id
    @food_order.pickup = Time.now
    if @food_order.save
      redirect_to user_path(@current_user)
    else
      redirect_to :back
    end
  end

end
