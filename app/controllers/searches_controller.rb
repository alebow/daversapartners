class SearchesController < ApplicationController

  def new
  	@search = current_associate.searches.new
  end

	def create
  	@search = current_associate.searches.new(params[:search])
	  if @search.save
	    flash[:success] = "Successfully created new client!"
	    redirect_to @search
	  else
	    render 'new'
	  end
  end

  def show
  	@search = Search.find(params[:id])
  end

  def index
  	@searches = Search.all
  end

  def edit
  	@search = Search.find(params[:id])
  end

end
