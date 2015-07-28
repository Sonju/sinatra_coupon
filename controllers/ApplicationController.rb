class ApplicationController < Sinatra::Base

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
    erb :not_found
  end

end
