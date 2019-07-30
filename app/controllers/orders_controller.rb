class OrdersController < ApplicationController
  def new
    @listing = Listing.find(params[:listing_id])
    
    Stripe.api_key = 'sk_test_uo5cTZsl8JRMv62lsrXBLEWv00puR2cPhM'

    order = Order.new
    order.listing = @listing
    order.user = User.find(@listing.user.id)
    order.completed = false
    order.buyer = current_user.id
    order.save


    @session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: [{
    name: @listing.name,
    description: "by #{@listing.user.name}",
    images: ['https://example.com/t-shirt.png'],
    amount: (@listing.price * 100).to_i,
    currency: 'aud',
    quantity: 1,
    }],
    success_url: "http://localhost:3000/orders/complete/#{order.id}",
    cancel_url: 'http://localhost:3000/orders/cancel',
    )

    order.session_id = @session.id
    order.save

  end

  def complete
    session_id = params[:id]
    order = Order.find(session_id)
    if order
      if order.buyer == current_user.id
        order.completed = true
        order.save
        @completed_order = order
      else
        redirect_to show_path
        flash[:alert] = "Looks like you dont own this order"
      end
    else
      redirect_to show_path
      flash[:alert] = "Looks like there was a error"
    end



  end


end
