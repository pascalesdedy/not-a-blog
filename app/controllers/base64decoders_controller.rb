class Base64decodersController < ApplicationController
  before_action :set_base64decoder, only: [:show, :edit, :update, :destroy]

require "base64"

def index
	@base64decoders = Base64decoder.all
end

def new
  @base64decoder = Base64decoder.new
end

def show
end

def decode_from_string(datainput)
end

def create
	datainput = params[:base64decoder][:datainput]
	operation = params[:base64decoder][:operation]
	if operation == 'decode'
	    data = Base64.decode64(datainput)
	else
		data = Base64.encode64(datainput)
	end	
	@base64decoder = Base64decoder.create(datainput: datainput, data: data, operation: operation)
	respond_to do |format|
		if @base64decoder.save
	    	format.html { redirect_to @base64decoder, notice: 'Post was successfully created.' }
		else
   	        format.html { render :new }
		end
	end
end


def destroy
	@base64decoder.destroy
	respond_to do |format|
		format.html { redirect_to base64decoders_url, notice: 'Data was successfully created.' }
	end
end

private
    # Use callbacks to share common setup or constraints between actions.
def set_base64decoder
    @base64decoder = Base64decoder.find(params[:id])
end



end



