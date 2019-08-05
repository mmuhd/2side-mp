class ListingController < ApplicationController

  def show
    if params[:id]
      if Listing.where(id: params[:id]).count.zero?
        redirect_to show_path
        flash[:alert] = "Error finding id"
      else
        @listing = Listing.find(params[:id])
        if @listing.alive != true || @listing.deleted != false
          redirect_to show_path
        end
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

  # This is not yet implemented
  # def update
  #   @listing = Listing.where(id: params[:id])
  #   if @listing.save
  #     # success
  #   else
  #     # error handling
  #   end
  # end
  #

  def hide
    listing =  Listing.find(params[:id])
    if listing.user.id == current_user.id
      case params[:s]
      when "1"
        listing.alive = false
        if listing.save
          redirect_to user_dashboard_path
          flash[:alert] = "Updated"
        end

      when "0"
        listing.alive = true
        if listing.save
          redirect_to user_dashboard_path
          flash[:alert] = "Updated"
        end

      else
        redirect_to user_dashboard_path
        flash[:alert] = "Oh no somethings broken"
      end
    else
      redirect_to root_path
      flash[:alert] = "please do not do this as you will recive a ban"
    end

  end

  def delete
    listing = Listing.find(params[:id])
    if listing.user.id == current_user.id
      listing.deleted = true
      listing.alive = false
      if listing.save
        flash[:alert] = "Listing #{params[:id]} deleted"
        redirect_to user_dashboard_path
      else
        flash[:alert] = "Failed to delete listing #{params[:id]}"
        redirect_to user_dashboard_path
      end
    else
      redirect_to root_path
      flash[:alert] = "please do not do this as you will recive a ban"
    end
  end


end
