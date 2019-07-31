class AppController < ApplicationController
  def index
    @new_listings = Listing.where(alive: true).last(10)
  end

  def about
  end


  def profile
    @user = User.find(params[:id])
    @user_listing = Listing.where(user: params[:id])
  end



end
