class ArticlesController < ApplicationController
	def new

	end
	def create
		render plain: params[:aticle].inspect
	end

end
