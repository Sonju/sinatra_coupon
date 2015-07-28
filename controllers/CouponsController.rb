class CouponsController < ApplicationController


  get '/' do
    @coupons = Coupons.all
    erb :coupons, :locals => { :coupons => @coupons}
  end

end
