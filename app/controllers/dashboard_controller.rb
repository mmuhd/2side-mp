class DashboardController < ApplicationController
    before_action :user_signed_in?
    def dashboard
      @my_listings = Listing.where(user: current_user, deleted: false )
    end


    def new_listing
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
      listing =  Listing.find(params[:id])
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
