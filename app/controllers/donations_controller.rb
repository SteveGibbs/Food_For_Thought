class DonationsController < ApplicationController
  def index
    @donations = Donation.all

  end

  def new
      @donation = Donation.new
  end

  def create
    @donation = Donation.create(donation_params)
    @user = @current_user # test code
    @user.donations << @donation # test code
    redirect_to donations_path
  end

  def edit
    @donation = Donation.find(params[:id])
  end

  def update
    @donation = Donation.find(params[:id])
    @donation.update(donation_params)
    redirect_to donations_path
  end

  def show
    @donation = Donation.find(params[:id])
  end

  def destroy
      @donation = Donation.find(params[:id])
      @donation.destroy
      redirect_to donations_path
    end

end
