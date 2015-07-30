class UsersController < ApplicationController


  get '/users' do
    erb :users
  end

  get '/users/login' do
    erb :users_login
  end

  get '/users/signin' do
    erb :users_sigin
  end

  get '/users/signup'
   erb: users_signup

end
