class ApplicationController < ActionController::Base
  protect_from_forgery
  
  # Set landing page following successful login
  # def after_sign_in_path_for(resource)
    # dashboards_index_path
  # end
  
end
