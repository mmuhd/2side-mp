class DashboardController < ApplicationController

    before_action :authenticate_user!
    def dashboard
      @my_listings = Listing.where(user: current_user, deleted: false )
    end

    def new_listing
    end

end
