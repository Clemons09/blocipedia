class ApplicationController < ActionController::Base
	include Pundit
	before_action :authenticate_user!, except: [:index, :about]
	protect_from_forgery
    
	
end
