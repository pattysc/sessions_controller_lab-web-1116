class SessionsController < ApplicationController

  def create
    if params[:name].nil? || params[:name].empty? 
      flash[:notice] = "Use a real name"
      redirect_to action:"new"
    else
      name_is(params[:name])
      redirect_to '/'
    end
  end

  def destroy
    session[:name] = nil
    flash[:notice] = 'Bye!'
    redirect_to '/'
  end
end
