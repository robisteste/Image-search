class PicturesController < ApplicationController
	def index
		if params[:search]
			pic = params[:search]
			@response = HTTParty.get('https://api.500px.com/v1/photos/search?term=' + pic + '&consumer_key=coS7286NT5KN6uxLRTFG4vhpGrc4xRgIkGYJVMjU')
		end
	end
end
