class HomeController < ApplicationController


  get '/' do
    @coupons = CouponsModel.all
    erb :index
  end

end
