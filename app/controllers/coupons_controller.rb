class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def new
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def create
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon][:coupon_code]
    @coupon.store = params[:coupon][:coupon_code]
    @coupon.save
    #binding.pry
    redirect_to coupon_path(@coupon)
  end

end
