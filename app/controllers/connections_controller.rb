class ConnectionsController < ApplicationController
  def index
    @connections = Connection.all
  end

  def show
    @connection = Connection.find(params[:id])
  end

  def new
    @connection = Connection.new
  end

  def create
    @connection = Connection.new
    @connection.company = params[:company]
    @connection.name = params[:name]
    @connection.user_id = params[:user_id]

    if @connection.save
      redirect_to "/connections", :notice => "Connection created successfully."
    else
      render 'new'
    end
  end

  def edit
    @connection = Connection.find(params[:id])
  end

  def update
    @connection = Connection.find(params[:id])

    @connection.company = params[:company]
    @connection.name = params[:name]
    @connection.user_id = params[:user_id]

    if @connection.save
      redirect_to "/connections", :notice => "Connection updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @connection = Connection.find(params[:id])

    @connection.destroy

    redirect_to "/connections", :notice => "Connection deleted."
  end
end
