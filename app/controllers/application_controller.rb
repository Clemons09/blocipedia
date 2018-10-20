class ApplicationController < ActionController::Base
	before_action :authenticate_user!, except: [:index, :about]
    #before_action :prepare_meta_tags, if: -> { request.get? }
	#protect_from_forgery with: :exception
	
end
