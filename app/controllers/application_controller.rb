class ApplicationController < ActionController::Base
  protect_from_forgery
  around_filter :user_time_zone, if: :current_user
  
  # Set landing page following successful login
  # def after_sign_in_path_for(resource)
    # dashboards_index_path
  # end

private

  def user_time_zone(&block)
    Time.use_zone(current_user.time_zone, &block)
  end
  
end
