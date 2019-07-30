class OrdersController < ApplicationController

  include RestClient

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
        if @completed_order.completed = true
          email_seller(@completed_order.user.email, @completed_order.user.name, @completed_order.listing, User.find(@completed_order.buyer).name, User.find(@completed_order.buyer).email)
          email_buyer(User.find(@completed_order.buyer).name, User.find(@completed_order.buyer).email, @completed_order.listing)
        end
      else
        redirect_to show_path
        flash[:alert] = "Looks like you dont own this order"
      end
    else
      redirect_to show_path
      flash[:alert] = "Looks like there was a error"
    end



  end

  def email_seller(seller_email, seller_name, order, buyer_email, buyer_name)
    RestClient.post "https://api:835454d42b3508b3107531fa97334944-f877bd7a-41bcb80b"\
    "@api.mailgun.net/v3/sandbox95cf92962aa849c6bc27c5098aa82a2e.mailgun.org/messages",
                    :from => "mailgun@sandbox95cf92962aa849c6bc27c5098aa82a2e.mailgun.org",
                    :to => "huxhales@gmail.com",
                    :subject => "Sold product #{order.name}",
                    :text => "You sold a product \n To: #{buyer_name}.\n Please contact them @ #{buyer_email}"
  end


  def email_buyer(buyer_email, buyer_name, order)
    RestClient.post "https://api:835454d42b3508b3107531fa97334944-f877bd7a-41bcb80b"\
    "@api.mailgun.net/v3/sandbox95cf92962aa849c6bc27c5098aa82a2e.mailgun.org/messages",
                    :from => "mailgun@sandbox95cf92962aa849c6bc27c5098aa82a2e.mailgun.org",
                    :to => "huxhales@gmail.com",
                    :subject => "Congrats on buying #{order.name}",
                    :text => "To Recive your product contact #{order.user.name} @ #{order.user.email}"
  end


end
