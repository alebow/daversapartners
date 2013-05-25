class AssociatesController < ApplicationController

	def new
		@associate = Associate.new
	end

	def create
    @associate = Associate.new(params[:associate])
    if @associate.save
    	sign_in @associate
    	flash[:success] = "Welcome to Daversa Partners!"
      redirect_to @associate
    else
      render 'new'
    end
  end

	def show
		@associate = Associate.find(params[:id])
	end

	def index
		@associates = Associate.all
	end

	def edit
		@associate = Associate.find(params[:id])
	end

	def update
    @associate = Associate.find(params[:id])
    if @associate.update_attributes(params[:associate])
      flash[:success] = "Update Successful"
      redirect_to @associate
    else
      render 'edit'
    end
  end

end
