class UserController < ApplicationController
  def dashboard
  end


  def new_listing 
  end


  def create_listing
    name = params[:name]
    body = params[:body]
    price = params[:price]
    category = params[:category]
    tag = params[:tag]
    l = Listing.new
    l.name = name
    l.body = body
    l.price = price
    l.category = category
    l.tag = tag
    l.alive = true
    # l.created_by = 
    if l.save
      puts "saved to db"
    else
      puts "why"
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
end
