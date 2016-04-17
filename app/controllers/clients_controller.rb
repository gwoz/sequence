class ClientsController < ApplicationController

  def index
    @clients = Client.all
    respond_with(@clients)
  end

  def new
    @client = Client.new()
    respond_with(@client)
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to clients_path
    else
      render :new
    end
  end

  def show
    @client = Client.find(params[:id])
    respond_with(@client)
  end


  private

  def client_params
    params.require(:client).permit(:name)
  end

end
