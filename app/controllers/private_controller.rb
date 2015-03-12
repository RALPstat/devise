class PrivateController < ApplicationController
  def index
  	if user_signed_in?
  		self  		
  	else
  		flash[:alert] = "Oops! Debes iniciar sesión antes de ver esto"
  		redirect_to public_index_path
  	end
  end
end
