class FoodOrdersController < ApplicationController

  def create
      chosen_donation = Donation.find(params[:donation_id])
        @food_order = FoodOrder.new  # Instantiating a new Item class
        @food_order.donation_id = chosen_donation.donation_id
        @food_order.user_id = @current_user
            end

      @food_order.save
      redirect_to root_path
    end

end


# @order.items << item
