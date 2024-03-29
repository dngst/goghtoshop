# frozen_string_literal: true

class PaymentsController < ApplicationController
  def show
    @order = Order.find_by(
      session_id: session.id.to_s,
      stripe_checkout_id: params[:session_id]
    )
    stripe_session = Stripe::Checkout::Session.retrieve(params[:session_id])
    if stripe_session.status == 'complete'
      @order.paid!
    else
      @order.pending!
    end
  end
end
