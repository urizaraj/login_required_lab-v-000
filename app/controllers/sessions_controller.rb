class SessionsController < ApplicationController
  def new

  end

  def create

  end

  def destroy

  end

  def current_user
    session[:username]
  end
end
