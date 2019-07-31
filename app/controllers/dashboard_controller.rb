class DashboardController < ApplicationController
    before_action :user_signed_in?
    def dashboard
      @my_listings = Listing.where(user: current_user, deleted: false )
    end


    def new_listing
    end


    def create_listing
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

    def update_listing
      @listing = Listing.where(id: params[:id])
      if @listing.save
        # success
      else
        # error handling
      end
    end

    def hide_listing
      status = params[:s]
      listing =  Listing.find(params[:id])
      if status == "1"
        listing.alive = false
        if listing.save
          redirect_to user_dashboard_path
          flash[:notice] = "Hide listing"
        else
          redirect_to user_dashboard_path
          flash[:alert] = "Oh no somethings broken"
        end
      elsif status == "0"
        listing.alive = true
        if listing.save
          redirect_to user_dashboard_path
          flash[:notice] = "UnHide listing"
        else
          redirect_to user_dashboard_path
          flash[:alert] = "Oh no somethings broken"
        end
      else
        redirect_to user_dashboard_path
        flash[:alert] = "Oh no somethings broken"
      end

    end

    def delete_listing
      listing = Listing.find(params[:id])
      listing.deleted = true
      listing.alive = false
      if listing.save
        flash[:alert] = "Listing #{params[:id]} deleted"
        redirect_to user_dashboard_path
      else
        flash[:alert] = "Failed to delete listing #{params[:id]}"
        redirect_to user_dashboard_path
      end
    end
end
