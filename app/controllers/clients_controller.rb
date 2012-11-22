class ClientsController < ApplicationController



  def new
    @client = Client.new
  end
  
  def create
    @client = Client.new(params[:client])
    if @client.save
      render 'new', :flash => { :success => "OK" }
    else
      render 'new'
    end
  end
  
  
  
end
