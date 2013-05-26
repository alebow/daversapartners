class ClientsController < ApplicationController

	def new
		@client = Client.new
	end

	def create
    @client = Client.new(params[:client])
    if @client.save
      flash[:success] = "Successfully created new client!"
      redirect_to @client
    else
      render 'new'
    end
  end

  def show
  	@client = Client.find(params[:id])
  end

  def index
    @clients = Client.all
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    if @client.update_attributes(params[:client])
      flash[:success] = "Update Successful"
      redirect_to @client
    else
      render 'edit'
    end
  end

  def destroy
    Client.find(params[:id]).destroy
    flash[:success] = "Client destroyed."
    redirect_to clients_url
  end

end
