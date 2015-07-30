class CouponsController < ApplicationController

# CRUD controller
# Business Logic Maintenance
# 'maintance screens'

# list (read) all the coupons
  get '/' do
    @coupons = Coupons.all
    erb :coupons
  end

# create coupons
 get '/create' do
   erb :coupons_create
 end

 post '/create' do
   @coupons = CouponsModel.new
  #  params contain any object posted as a name
  @coupon.name = params[:name]
  @coupon.email = params[:email]
  @coupon.save

  erb :coupons_create_success
 end

 # update (edit) coupons
 get '/edit/:id' do
   @id = params[:id]
   @coupon = CouponsModel.find(@id)

   erb :coupons_edit
 end

 post '/edit' do
   @coupon = CouponsModel.find(params[:id])
   @coupon.name = params[:name]
   @coupon.email = params[:email]
   @coupon.save

   erb :coupons_edit_success
 end

 # delete (destroy) coupons
  post '/delete' do
    @id = params[:id]
    @coupon = CouponsModel.find(@id)
    @coupon.destroy

    erb :coupons_delete_success
  end

end
