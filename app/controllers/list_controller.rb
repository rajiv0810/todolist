class ListController < ApplicationController

	def new
		
	end

	def create
		render plain: params[:list].inspect
  	end
end
