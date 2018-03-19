class SessionsController < ApplicationController
  def new

  end

  def create
    return redirect_to root_path unless params.key?(:name)
    return redirect_to root_path if params[:name].empty?

    session[:name] = params[:name]
    redirect_to secrets_path
  end

  def destroy
    session.delete :name
  end
end
