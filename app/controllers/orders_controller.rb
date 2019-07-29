class OrdersController < ApplicationController
  def new
    @listing = Listing.find(params[:listing_id])
    
    Stripe.api_key = 'sk_test_uo5cTZsl8JRMv62lsrXBLEWv00puR2cPhM'

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
    success_url: "http://localhost:3000/orders/complete/#{@listing.id}",
    cancel_url: 'http://localhost:3000/orders/cancel',
    )
    order = Order.new
    order.session_id = @session.id
    order.listing = @listing
    order.user = User.find(@listing.user.id)
    order.completed = false
    if order.after_save 
      flash[:alert]= "saved"
    end
  end
end
