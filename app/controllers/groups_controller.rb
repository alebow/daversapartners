class GroupsController < ApplicationController

	def index
		@groups = Group.all
	end

	def show
		@group = Group.find(params[:id])
		@associates = @group.associates
		@searches = @group.searches
	end

end
