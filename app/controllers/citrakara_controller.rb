class CitrakaraController < ApplicationController

def index
	uri = "http://api-citrakara.herokuapp.com/v1/paintings"
	@result = JSON.parse(Net::HTTP.get(URI.parse(uri)))
	
   	

end

end
