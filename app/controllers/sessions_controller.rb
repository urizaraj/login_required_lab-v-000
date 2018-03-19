class SessionsController < ApplicationController
  def new

  end

  def create
    return redirect_to root_path unless params.key?(:name)
    return redirect_to root_path if params[:name].empty?

    session[:name] = params[:name]
  end

  def destroy
    session.delete :name
  end
end
