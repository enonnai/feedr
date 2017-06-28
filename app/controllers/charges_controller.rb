require 'stripe'
Stripe.api_key = "sk_test_GYNbzZbhD190HL7wp8DVZOXa"

class ChargesController < ApplicationController

  def new
  end

  def create
    @amount = params[:amount]
    @amount = @amount.gsub('£', '').gsub(',', '')

    begin
    @amount = Float(@amount).round(2)
  rescue
    flash[:error] = 'Charge not completed. Please enter a valid amount in GBP (£).'
    redirect_to new_charge_path
    return
  end

  @amount = (@amount * 100).to_i

  if @amount < 001
    flash[:error] = 'Charge not completed. Donation amount must be at least £0.01.'
    redirect_to new_charge_path
    return
  end

  Stripe::Charge.create(
    :amount => @amount,
    :currency => 'gbp',
    :source => 'tok_gb',
    :description => 'Custom donation'
  )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
