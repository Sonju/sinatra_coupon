class ApplicationController < Sinatra::Base

  #  CRUD controllers
  # Business Logic Maintenance
  # 'maintance screens'

  # list (read) all the coupons
  #  get '/' do

  # create coupons

  # update (edit) coupons

  # delete (destroy) coupons

  require 'bundler'
  Bundler.require

  # connect to database
  ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'sinatra_coupon'
  )


  # include/set all ERB files in /view
  set :views, File.expand_path('../../views', __FILE__)

  not_found do
    title 'Not Found!'
    erb :not_found
  end

end
