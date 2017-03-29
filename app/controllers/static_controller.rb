class StaticController < ApplicationController

	def home
		if user_signed_in?
			redirect_to "/perso"
		end
	end
	def about
	end
	def contact
	end
end
