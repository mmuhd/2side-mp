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



  def create
    name = params[:name]
    body = params[:body]
    price = params[:price]
    category = params[:category]
    tag = params[:tag]
    user = current_user

    l = Listing.new
    l.name = name
    l.body = body
    l.price = price
    l.category = category
    l.tag = tag
    l.alive = true
    l.deleted = false
    l.user = user
    if l.save
      flash[:alert] = "Added new listing"
      redirect_to user_dashboard_path
    else
      flash[:alert] = "Failed to make new listing"
      redirect_to user_dashboard_path
    end

  end


end
