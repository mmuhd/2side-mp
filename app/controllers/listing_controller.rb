class ListingController < ApplicationController
  def show
    if params[:id]
      if Listing.where(id: params[:id]).count.zero?
        redirect_to show_path
        flash[:alert] = "Error finding id"
      else
        @listing = Listing.find(params[:id])
      end
    elsif params[:like]
      @listings = Listing.where('name LIKE ?', '%' + params[:like] + '%').where(alive: true).where(deleted: false)
      if @listings.count.zero?
        redirect_to show_path
        flash[:alert] = "We couldn't find anything with name like #{params[:like]}"
      end
    else
      @listings = Listing.where(alive: true, deleted: false).all
      if @listings.count.zero?
        redirect_to show_path
        flash[:alert] = "Wooow this is a huge error. this mean the database is broken"
      end
    end
  end
end
