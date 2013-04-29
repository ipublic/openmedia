module UserHelpers

  def signup(name, password, time_zone)
    visit new_user_registration_path
    fill_in "user_email", with: "jj@gmail.com" #@user_name
    fill_in "user_password", with: @password
    fill_in "user_password_confirmation", with: @password
    select_second_option "user_time_zone"
    submit
  end

  def signin(name, password)
    visit new_user_session_path
    fill_in 'user_email', with: name
    fill_in 'user_password', with:  password
    submit
  end
end

World(UserHelpers)