class ListingController < ApplicationController
  def show
    if params[:id]
      @listing = Listing.find(params[:id])
    elsif params[:like]
      @listings = Listing.where('name LIKE ?', '%' + params[:like] + '%')
    else
      @listings = Listing.where(alive: true).where(deleted: false).all
    end
  end

end
