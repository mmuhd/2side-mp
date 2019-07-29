class AppController < ApplicationController
  def index
    @new_listings = Listing.where(alive: true).last(6)
  end

  def about
  end


  def show
    @listings = get_listing(params)
  end


  def listing
    id = params[:id]
    @listing = Listing.where(id: id).first
  end



  def get_listing(params)
    if params[:like]
      like = params[:like]
      puts "Good"
      return @listings = Listing.where('name LIKE ?', '%' + like + '%')
    else
      puts "Also Good"
      return @listings = Listing.where(alive: true).all.reorder('created_at DESC')
    end
  end

  def profile
    @user = User.find(params[:id])
    @user_listing = Listing.where(user: params[:id])
  end



end
