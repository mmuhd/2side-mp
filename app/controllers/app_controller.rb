class AppController < ApplicationController
  def index
    @new_listings = Listing.where(alive: true).last(6)
  end

  def about
  end


  def show
    @listings = Listing.where(alive: true).all.reorder('created_at DESC')
  end


  def listing
    id = params[:id]
    @listing = Listing.where(id: id).first
    
  end
end
