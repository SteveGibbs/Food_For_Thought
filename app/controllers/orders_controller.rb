class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    @cart = @current_cart
  end

  def create

    @order = Order.new(order_params)
    @current_cart.items each do |item|
      @order.items << item
      # @order.items = @current_cart.items #new code
    end

    @order.save
    session[:order_id] = @order.id if @order.save
    redirect_to orders_path
  end

  # chosen_donation = Donation.find(params[:donation_id])
  # @food_order = FoodOrder.new
  # @food_order.donation_id = chosen_donation.id
  # @food_order.user_id = @current_user.id
  # @food_order.pickup = Time.now
  # if @food_order.save
  #   redirect_to user_path(@current_user)
  # else
  #   redirect_to :back
  # end







  def edit
    @order = Order.find(params[:id])
  end

  def show
    @order = Order.find(params[:id])
    @cart = @current_cart
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    @order.save
    redirect_to orders_path
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path
  end

  private

  def order_params
    params.require(:order).permit(:name, :address1, :status)
  end


end
